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
  factory REVKeystore.init(
      {@required String password,
      @required String privateKey,
      @required WalletMeta walletMeta}) {
    final address = RevKey(privateKey).address;
    final crypto = Crypto.init(password: password, privateKey: privateKey);
    final id = Keystore.generateKeystoreId();
    return REVKeystore(
        crypto: crypto, id: id, address: address, meta: walletMeta);
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
