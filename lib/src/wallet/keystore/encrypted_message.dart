import 'dart:core';
import 'dart:math';
import 'dart:typed_data';

import 'package:capo_core_dart/src/utils/app_error.dart';
import 'package:capo_core_dart/src/utils/random_bridge.dart';
import 'package:capo_core_dart/src/wallet/keystore/crypto.dart';
import 'package:hex/hex.dart';

class EncryptedMessage {
  final String encStr;
  final String nonce;

  EncryptedMessage({this.encStr, this.nonce});

  factory EncryptedMessage.fromMap(Map map) {
    return EncryptedMessage(encStr: map['encStr'], nonce: map['nonce']);
  }

  factory EncryptedMessage.create(
      Crypto crypto, String password, String message) {
    final dartRandom = RandomBridge(Random.secure());
    final nonce = dartRandom.nextBytes(128 ~/ 8);
    final derivedKey =
        Uint8List.view(crypto.derivedKey(password).buffer, 0, 16);
    final encStr = Crypto.encryptor(derivedKey, nonce)
        .process(Uint8List.fromList(message.codeUnits));
    return EncryptedMessage(
        encStr: HEX.encode(encStr), nonce: HEX.encode(nonce));
  }

  String decrypt(Crypto crypto, String password) {
    final decryptedMac = crypto.macFrom(password);
    if (decryptedMac != crypto.mac) {
      throw AppError(type: AppErrorType.passwordIncorrect);
    }
    final derivedKey =
        Uint8List.view(crypto.derivedKey(password).buffer, 0, 16);

    final decryptor = Crypto.decryptor(derivedKey, HEX.decode(nonce));
    final decryptStr = decryptor.process(HEX.decode(encStr));
    return String.fromCharCodes(decryptStr);
  }

  Map encode() {
    final map = {
      "encStr": encStr,
      "nonce": nonce,
    };
    return map;
  }
}
