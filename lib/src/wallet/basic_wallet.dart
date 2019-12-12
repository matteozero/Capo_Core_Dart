import 'dart:convert';
import 'package:capo_core_dart/src/keystore/keystore.dart';
import 'package:capo_core_dart/src/keystore/rev_keystore.dart';
import 'package:capo_core_dart/src/keystore/rev_mnemonic_keystore.dart';
import 'package:capo_core_dart/src/utils/app_error.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:flutter/foundation.dart';

class BasicWallet {
  String get walletID {
    return keystore.id;
  }

  Keystore keystore;
  String get address {
    return keystore.address;
  }

  WalletMeta get capoMeta {
    return keystore.meta;
  }

  BasicWallet({@required this.keystore});
  factory BasicWallet.fromMap(Map map) {
    final metaMap = map[WalletMeta.key];
    final meta = WalletMeta.fromMap(metaMap);
    final source = meta.source;
    Keystore keystore;
    if (source == Source.create || source == Source.importFromMnemonic) {
      keystore = REVMnemonicKeystore.fromMap(map);
    } else {
      keystore = REVKeystore.fromMap(map);
    }
    return BasicWallet(keystore: keystore);
  }

  Map encode() {
    return keystore.dump();
  }

  String toJsonString() {
    Map map = encode();
    return json.encode(map);
  }

  String privateKey(String password) {
    if (keystore is PrivateKeyCryptoKeystore) {
      if (verifyPassword(password)) {
        final privateKeyCryptoKeystore = keystore as PrivateKeyCryptoKeystore;
        return privateKeyCryptoKeystore.decryptPrivateKey(password);
      } else {
        throw AppError(type: AppErrorType.passwordIncorrect);
      }
    }
    throw AppError(type:AppErrorType.operationUnsupported);
  }

  String exportMnemonic(String password) {
    if (keystore is EncMnemonicKeystore) {
      if (verifyPassword(password)) {
        final encMnemonicKeystore = keystore as EncMnemonicKeystore;
        return encMnemonicKeystore.decryptMnemonic(password);
      }
      throw AppError(type: AppErrorType.passwordIncorrect);
    }
    throw AppError(type: AppErrorType.operationUnsupported);
  }

  bool verifyPassword(String password) {
    return keystore.verify(password);
  }
}
