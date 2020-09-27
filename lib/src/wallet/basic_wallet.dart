import 'dart:async';
import 'dart:convert';

import 'package:capo_core_dart/src/utils/app_error.dart';
import 'package:capo_core_dart/src/wallet/keystore/keystore.dart';
import 'package:capo_core_dart/src/wallet/keystore/rev_keystore.dart';
import 'package:capo_core_dart/src/wallet/keystore/rev_mnemonic_keystore.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:capo_token_core_plugin/capo_token_core_plugin.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert' as convert;

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
    final Map metaMap = map[WalletMeta.key];
    final WalletMeta meta = WalletMeta.fromMap(metaMap);
    final String source = meta.from;
    Keystore keystore;
    if (source == "MNEMONIC") {
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

  Future<String> exportPrivateKey({@required String password}) async {
        return keystore.decryptPrivateKey(password);
  }

  Future<String> exportMnemonic(String password) async {
    if (keystore is REVMnemonicKeystore) {
        return (keystore as REVMnemonicKeystore).decryptMnemonic(password);
      } else {
        throw AppError(type: AppErrorType.operationUnsupported);
      }
  }

  Future<bool> verifyPassword(String password) {
    return keystore.verify(password);
  }
}
