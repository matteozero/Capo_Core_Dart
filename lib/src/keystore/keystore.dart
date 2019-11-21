import 'dart:convert';

import 'package:capo_core_dart/src/keystore/crypto.dart';
import 'package:capo_core_dart/src/keystore/encrypted_message.dart';
import 'package:capo_core_dart/src/utils/uuid.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';

abstract class Keystore {
  String id;
  int version;
  String address;
  Crypto crypto;
  WalletMeta meta;
  bool verify(String password) {
    final decryptedMac = crypto.macFrom(password);
    return decryptedMac == crypto.mac;
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

abstract class PrivateKeyCryptoKeystore extends Keystore {
  String decryptPrivateKey(String password) {
    return crypto.privateKey(password);
  }
}

abstract class EncMnemonicKeystore extends PrivateKeyCryptoKeystore {
  EncryptedMessage encMnemonic;
  String mnemonicPath;
  String decryptMnemonic(String password) {
    var mnemonicStr = encMnemonic.decrypt(crypto, password);
    return mnemonicStr;
  }
}
