import 'dart:async';
import 'dart:isolate';

import 'package:capo_core_dart/capo_core_dart.dart';
import 'package:capo_core_dart/src/wallet/keystore/crypto.dart';
import 'package:capo_core_dart/src/wallet/keystore/keystore.dart';
import 'package:capo_core_dart/src/wallet/keystore/rev_key.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:flutter/cupertino.dart';

class REVKeystore extends Keystore {

  REVKeystore(
      );

 

  

  factory REVKeystore.fromMap(Map map) {
    final cryptoMap = map['crypto'] as Map<String, dynamic>;
    final crypto = Crypto.fromMap(cryptoMap);
    final address = map['address'];
    final id = map['id'];
    final version = map['version'];
    final walletMetaMap = map[WalletMeta.key];
    final walletMeta = WalletMeta.fromMap(walletMetaMap);

    REVKeystore keystore = REVKeystore();
     keystore.address = address;
     keystore.crypto = crypto;
     keystore.id = id;
     keystore.version = version;
     keystore.meta = walletMeta;
     return keystore;
  }

}
