import 'package:capo_core_dart/src/keystore/crypto.dart';
import 'package:capo_core_dart/src/keystore/encrypted_message.dart';
import 'package:capo_core_dart/src/keystore/keystore.dart';
import 'package:capo_core_dart/src/keystore/rev_key.dart';
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


  factory REVMnemonicKeystore.init(
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
