import 'dart:async';
import 'dart:isolate';

import 'package:capo_core_dart/src/wallet/keystore/crypto.dart';
import 'package:capo_core_dart/src/wallet/keystore/encrypted_message.dart';
import 'package:capo_core_dart/src/wallet/keystore/keystore.dart';
import 'package:capo_core_dart/src/wallet/keystore/rev_key.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:flutter/foundation.dart';

class REVMnemonicKeystore extends EncMnemonicKeystore {
  @override
  Crypto crypto;

  final String id;
  final String address;
  final WalletMeta meta;
  final int version;
  final EncryptedMessage encMnemonic;
  final String mnemonicPath;
  REVMnemonicKeystore(
      {@required this.crypto,
      @required this.id,
      @required this.address,
      @required this.meta,
      @required this.encMnemonic,
      this.version = 3,
      this.mnemonicPath});

  factory REVMnemonicKeystore._init(
      {@required String password,
      @required String mnemonic,
      @required WalletMeta walletMeta,
      String path = "m/44'/60'/0'/0/0"}) {
    final revKey = RevKey.fromMnemonic(mnemonic);
    final crypto =
        Crypto.init(password: password, privateKey: revKey.privateKey);
    final encryptedMessage =
        EncryptedMessage.create(crypto, password, mnemonic);
    final id = Keystore.generateKeystoreId();
    return REVMnemonicKeystore(
        address: revKey.address,
        crypto: crypto,
        id: id,
        encMnemonic: encryptedMessage,
        mnemonicPath: path,
        meta: walletMeta);
  }

  static void _threadTask(List<SendPort> commList) async {
    var sendPort = commList[0];
    var errorPort = commList[1];
    var isolateConPort = new ReceivePort();
    sendPort.send(isolateConPort.sendPort);
    isolateConPort.listen((data) {
      try {
        REVMnemonicKeystore keystore = REVMnemonicKeystore._init(
            password: data[0], mnemonic: data[1], walletMeta: data[2]);
        sendPort.send(keystore);
        isolateConPort.close();
      } catch (e) {
        errorPort.send(e);
        isolateConPort.close();
      }
    });
  }

  static Future<REVMnemonicKeystore> createInBackground(
      {@required String password,
      @required String mnemonic,
      @required WalletMeta walletMeta,
      String path = "m/44'/60'/0'/0/0"}) async {
    var errorPort = new ReceivePort();
    var resultPort = new ReceivePort();
    SendPort isolateSendPort;

    final Isolate isolate = await Isolate.spawn(_threadTask, [
      resultPort.sendPort,
      errorPort.sendPort,
    ]);
    final Completer<REVMnemonicKeystore> result =
        Completer<REVMnemonicKeystore>();
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
        isolateSendPort.send([password, mnemonic, walletMeta]);
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

  factory REVMnemonicKeystore.fromMap(Map map) {
    final cryptoMap = map['crypto'] as Map<String, dynamic>;
    final crypto = Crypto.fromMap(cryptoMap);
    final address = map['address'];
    final id = map['id'];
    final version = map['version'];
    final walletMetaMap = map[WalletMeta.key] as Map<String, dynamic>;
    final walletMeta = WalletMeta.fromMap(walletMetaMap);
    final mnemonicPath = map['mnemonicPath'];
    final encMnemonicMap = map['encMnemonic'];
    final encMnemonic = EncryptedMessage.fromMap(encMnemonicMap);
    return REVMnemonicKeystore(
        address: address,
        crypto: crypto,
        id: id,
        version: version,
        meta: walletMeta,
        encMnemonic: encMnemonic,
        mnemonicPath: mnemonicPath);
  }

  @override
  Map dump() {
    final map = super.dump();
    map['mnemonicPath'] = mnemonicPath;
    map['encMnemonic'] = encMnemonic.encode();
    return map;
  }
}