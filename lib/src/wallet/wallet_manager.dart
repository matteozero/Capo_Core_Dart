import 'package:capo_core_dart/src/keystore/keystore.dart';
import 'package:capo_core_dart/src/keystore/rev_keystore.dart';
import 'package:capo_core_dart/src/keystore/rev_mnemonic_keystore.dart';
import 'package:capo_core_dart/src/srorage/storage.dart';
import 'package:capo_core_dart/src/utils/app_error.dart';
import 'package:flutter/cupertino.dart';

import 'basic_wallet.dart';
import 'wallet_meta.dart';

class WalletManager {
  BasicWallet currentWallet;
  List<BasicWallet> wallets;
  List<String> walletsID;

  WalletManager(
      { this.currentWallet,
       this.wallets,
       this.walletsID});

  factory WalletManager.init(){
    return WalletManager(wallets: [],walletsID: []);
  }

  BasicWallet importFromMnemonic(
      {@required String mnemonic,
      @required WalletMeta metadata,
      @required String password,
      String path}) {
    final keystore = REVMnemonicKeystore.init(
        password: password, mnemonic: mnemonic, walletMeta: metadata);
    return append(keystore);
  }

  static Future<WalletManager> tryToLaodWalletManager(){
    return Storage.instance.tryToLaodWalletManager();
  }

  static Future<WalletManager> fromMap(Map map) async {
    final currentWalletMap = map['currentWallet'];
    final currentWallet = BasicWallet.fromMap(currentWalletMap);
    final walletsIDList = map['walletsID'] as List;
    List<String> walletsID = walletsIDList.map((i)=>i as String).toList();
    final wallets = await Storage.instance.loadWalletByIDs(walletsID);
    return WalletManager(
        currentWallet: currentWallet, wallets: wallets, walletsID: walletsID);
  }

  BasicWallet importFromPrivateKey(
      {@required String privateKey,
      @required WalletMeta metadata,
      @required String password,
      String path}) {
    final keystore = REVKeystore.init(
        password: password, privateKey: privateKey, walletMeta: metadata);
    return append(keystore);
  }

  BasicWallet append(Keystore keystore) {
    final wallet = BasicWallet(keystore: keystore);
    if (findWalletByAddress(wallet.address) != null) {
      throw AppError(type: AppErrorType.addressAlreadyExist);
    }
    wallets.add(wallet);
    walletsID.add(wallet.walletID);
    this.currentWallet = wallet;
    Storage.instance.flushWalletManager(this);
    Storage.instance.flushWallet(wallet.keystore);
    return wallet;
  }

  BasicWallet findWalletByAddress(String address) {
    if(wallets.isEmpty) return null;
    final wallet = wallets.firstWhere((wallet) {
      return wallet.address == address;
    },orElse: (){return null;});
    return wallet;
    
  }

  Map encode() {
    final map = Map();
    map['currentWallet'] = currentWallet.encode();
    map['walletsID'] = walletsID;
    return map;
  }
}
