import 'dart:async';
import 'dart:isolate';

import 'package:capo_core_dart/src/wallet/keystore/crypto.dart';
import 'package:capo_core_dart/src/wallet/keystore/encrypted_message.dart';
import 'package:capo_core_dart/src/wallet/keystore/keystore.dart';
// import 'package:capo_core_dart/src/wallet/keystore/rev_key.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:flutter/foundation.dart';

class REVMnemonicKeystore extends EncMnemonicKeystore {

  REVMnemonicKeystore(
      );

  factory REVMnemonicKeystore.fromMap(Map map) {
    final cryptoMap = map['crypto'] as Map<String, dynamic>;
    final crypto = Crypto.fromMap(cryptoMap);
    final String address = map['address'];
    final String id = map['id'];
    final version = map['version'];
    final walletMetaMap = map[WalletMeta.key] as Map<String, dynamic>;
    final walletMeta = WalletMeta.fromMap(walletMetaMap);
    final mnemonicPath = map['mnemonicPath'];
    final encMnemonicMap = map['encMnemonic'];
    final encMnemonic = EncryptedMessage.fromMap(encMnemonicMap);
    REVMnemonicKeystore keystore = REVMnemonicKeystore();
    keystore.address = address;
    keystore.crypto = crypto;
    keystore.id = id;
    keystore.version = version;
    keystore.meta = walletMeta;
    keystore.mnemonicPath = mnemonicPath;
    keystore.encMnemonic = encMnemonic;
    return keystore;
  }

  @override
  Map dump() {
    final map = super.dump();
    map['mnemonicPath'] = mnemonicPath;
    map['encMnemonic'] = encMnemonic.encode();
    return map;
  }
}
