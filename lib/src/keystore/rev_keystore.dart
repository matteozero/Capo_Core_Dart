import 'dart:async';
import 'dart:isolate';

import 'package:capo_core_dart/src/keystore/crypto.dart';
import 'package:capo_core_dart/src/keystore/keystore.dart';
import 'package:capo_core_dart/src/keystore/rev_key.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:flutter/cupertino.dart';

class REVKeystore extends PrivateKeyCryptoKeystore {
  @override
  Crypto crypto;

  String id;
  String address;
  WalletMeta meta;
  int version;
  REVKeystore(
      {@required this.crypto,
      @required this.id,
      @required this.address,
      @required this.meta,
      this.version = 3});
  factory REVKeystore._init(
      {@required String password,
      @required String privateKey,
      @required WalletMeta walletMeta}) {
    final address = RevKey(privateKey).address;
    final crypto = Crypto.init(password: password, privateKey: privateKey);
    final id = Keystore.generateKeystoreId();
    return REVKeystore(
        crypto: crypto, id: id, address: address, meta: walletMeta);
  }

  static void threadTask(List<SendPort> commList) async {
    var sendPort = commList[0];
    var errorPort = commList[1];
    var isolateConPort = new ReceivePort();
    sendPort.send(isolateConPort.sendPort);
    isolateConPort.listen((data) {
      try {
        REVKeystore keystore = REVKeystore._init(
            password: data[0], privateKey: data[1], walletMeta: data[2]);
        sendPort.send(keystore);
      } catch (e) {
        errorPort.send(e);
      }
    });
  }

  static createInBackground({
    @required String password,
    @required String privateKey,
    @required WalletMeta walletMeta,
  }) async {
    var errorPort = new ReceivePort();
    var resultPort = new ReceivePort();
    SendPort isolateSendPort;

    final Isolate isolate = await Isolate.spawn(threadTask, [
      resultPort.sendPort,
      errorPort.sendPort,
    ]);
    final Completer<REVKeystore> result = Completer<REVKeystore>();
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
        isolateSendPort.send([password, privateKey, walletMeta]);
      } else {
        resultPort.close();
        errorPort.close();
        isolate.kill();
        if (!result.isCompleted) result.complete(resultData);
      }
    });
    await result.future;
    resultPort.close();
    errorPort.close();
    isolate.kill();
    return result.future;
  }

  factory REVKeystore.fromMap(Map map) {
    final cryptoMap = map['crypto'] as Map<String, dynamic>;
    final crypto = Crypto.fromMap(cryptoMap);
    final address = map['address'];
    final id = map['id'];
    final version = map['version'];
    final walletMetaMap = map[WalletMeta.key];
    final walletMeta = WalletMeta.fromMap(walletMetaMap);
    return REVKeystore(
        crypto: crypto,
        id: id,
        address: address,
        meta: walletMeta,
        version: version);
  }
}
