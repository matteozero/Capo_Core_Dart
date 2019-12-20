import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:capo_core_dart/src/utils/uuid.dart';
import 'package:capo_core_dart/src/wallet/keystore/crypto.dart';
import 'package:capo_core_dart/src/wallet/keystore/encrypted_message.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';

abstract class Keystore {
  String id;
  int version;
  String address;
  Crypto crypto;
  WalletMeta meta;

  static void _threadTask(SendPort sendPort) async {
    var isolateConPort = new ReceivePort();
    sendPort.send(isolateConPort.sendPort);
    isolateConPort.listen((data) {
      final crypto = data[0] as Crypto;
      final password = data[1] as String;
      final decryptedMac = crypto.macFrom(password);
      sendPort.send(decryptedMac);
    });
  }

  Future<bool> verify(String password) async {
    var resultPort = new ReceivePort();
    SendPort isolateSendPort;
    final Isolate isolate = await Isolate.spawn(
      _threadTask,
      resultPort.sendPort,
    );
    final Completer<bool> result = Completer<bool>();
    resultPort.listen((dynamic resultData) {
      if (isolateSendPort == null && resultData is SendPort) {
        isolateSendPort = resultData;
        isolateSendPort.send([crypto, password]);
      } else {
        bool verifyed = resultData == crypto.mac;
        if (!result.isCompleted) result.complete(verifyed);
      }
    });
    await result.future;
    resultPort.close();
    isolate.kill();
    return result.future;
  }

  static void _threadTaskExportPrivateKey(SendPort sendPort) async {
    var isolateConPort = new ReceivePort();
    sendPort.send(isolateConPort.sendPort);
    isolateConPort.listen((data) {
      final keystore = data[0] as Crypto;
      final password = data[1] as String;
      final result = keystore.privateKey(password);
      sendPort.send(result);
      isolateConPort.close();
    });
  }

  Future<String> decryptPrivateKey(String password) async {
    var resultPort = new ReceivePort();
    SendPort isolateSendPort;

    final Isolate isolate = await Isolate.spawn(
      _threadTaskExportPrivateKey,
      resultPort.sendPort,
    );
    final Completer<String> result = Completer<String>();
    resultPort.listen((dynamic resultData) {
      if (isolateSendPort == null && resultData is SendPort) {
        isolateSendPort = resultData;
        isolateSendPort.send([crypto, password]);
      } else {
        if (!result.isCompleted) result.complete(resultData);
      }
    });
    await result.future;
    resultPort.close();
    isolate.kill();
    return result.future;
  }

  static String generateKeystoreId() {
    return formatUuid(generateUuidV4());
  }

  Map getStandardJSON() {
    return {
      "address": address,
      "id": id,
      "crypto": crypto.encode(),
      "version": version,
    };
  }

  String export() {
    final map = getStandardJSON();
    return json.encode(map);
  }

  Map dump() {
    final map = getStandardJSON();
    map[WalletMeta.key] = meta.encode();
    return map;
  }
}

abstract class EncMnemonicKeystore extends Keystore {
  static void _threadTaskExportMnemonic(List<SendPort> commList) async {
    var sendPort = commList[0];
    var isolateConPort = new ReceivePort();
    sendPort.send(isolateConPort.sendPort);
    isolateConPort.listen((data) {
      final encMnemonic = data[0] as EncryptedMessage;
      final crypto = data[1] as Crypto;

      final password = data[2] as String;
      var result = encMnemonic.decrypt(crypto, password);
      sendPort.send(result);
      isolateConPort.close();
    });
  }

  Future<String> decryptMnemonic(String password) async {
    var errorPort = new ReceivePort();
    var resultPort = new ReceivePort();
    SendPort isolateSendPort;

    final Isolate isolate = await Isolate.spawn(_threadTaskExportMnemonic, [
      resultPort.sendPort,
      errorPort.sendPort,
    ]);
    final Completer<String> result = Completer<String>();
    errorPort.listen((dynamic errorData) {
      if (result.isCompleted) {
        Zone.current.handleUncaughtError(errorData, null);
      } else {
        result.completeError(errorData, null);
      }
    });
    resultPort.listen((dynamic resultData) {
      if (isolateSendPort == null && resultData is SendPort) {
        isolateSendPort = resultData;
        isolateSendPort.send([encMnemonic, crypto, password]);
      } else {
        if (!result.isCompleted) result.complete(resultData);
      }
    });
    await result.future;
    resultPort.close();
    errorPort.close();
    isolate.kill();
    return result.future;
  }

  EncryptedMessage encMnemonic;
  String mnemonicPath;
}
