import 'dart:async';
import 'dart:convert';
import 'dart:convert' as convert;

import 'package:capo_core_dart/src/utils/uuid.dart';
import 'package:capo_core_dart/src/wallet/keystore/crypto.dart';
import 'package:capo_core_dart/src/wallet/keystore/encrypted_message.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:capo_token_core_plugin/capo_token_core_plugin.dart';

abstract class Keystore {
  String id;
  int version;
  String address;
  Crypto crypto;
  WalletMeta meta;

  Future<bool> verify(String password) async {
    final keystore = convert.jsonEncode(this.export());
    return CapoTokenCorePlugin.verifyPassword(keystore, password);
  }

  Future<String> decryptPrivateKey(String password) async {
    final keystore = convert.jsonEncode(this.export());
    return CapoTokenCorePlugin.exportPrivateKey(keystore, password);
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
  EncryptedMessage encMnemonic;
  String mnemonicPath;

  Future<String> decryptMnemonic(String password) async {
    final keystore = convert.jsonEncode(this.dump());
    return CapoTokenCorePlugin.exportMnemonic(keystore, password);
  }
}
