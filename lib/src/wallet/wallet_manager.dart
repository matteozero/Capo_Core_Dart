import 'package:capo_core_dart/capo_core_dart.dart';
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

  WalletManager({this.currentWallet, this.wallets, this.walletsID});

  factory WalletManager.init() {
    return WalletManager(wallets: [], walletsID: []);
  }

  importFromMnemonic({
    @required String password,
    @required String mnemonic,
    @required WalletMeta metadata,
    @required VoidCallback successCallback,
    @required MnemonicKeystoreErrorCallback errorCallback,
    String path,
  }) async {
    REVMnemonicKeystore.createInBackground(
        password: password,
        mnemonic: mnemonic,
        walletMeta: metadata,
        successCallback: (keystore) {
          try {
            append(keystore);
            successCallback();
          } catch (error) {
            errorCallback(error);
          }
        },errorCallback: (error){
           errorCallback(error);
        },);
  }

  void importFromPrivateKey(
      {@required String password,
      @required String privateKey,
      @required WalletMeta metadata,
      @required VoidCallback successCallback,
      @required KeystoreErrorCallback errorCallback,
      String path}) {
    REVKeystore.createInBackground(
        password: password,
        privateKey: privateKey,
        walletMeta: metadata,
        successCallback: (REVKeystore keystore) {
          try {
            append(keystore);
            successCallback();
          } catch (error) {
            print("error:$error");
            errorCallback(error);
          }
        },errorCallback: (error){
          errorCallback(error);
        });
  }

  static Future<WalletManager> tryToLaodWalletManager() {
    return Storage.instance.tryToLaodWalletManager();
  }

  static Future<WalletManager> fromMap(Map map) async {
    final currentWalletMap = map['currentWallet'];
    final currentWallet = BasicWallet.fromMap(currentWalletMap);
    final walletsIDList = map['walletsID'] as List;
    List<String> walletsID = walletsIDList.map((i) => i as String).toList();
    final wallets = await Storage.instance.loadWalletByIDs(walletsID);
    return WalletManager(
        currentWallet: currentWallet, wallets: wallets, walletsID: walletsID);
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
    if (wallets.isEmpty) return null;
    final wallet = wallets.firstWhere((wallet) {
      return wallet.address == address;
    }, orElse: () {
      return null;
    });
    return wallet;
  }

  Future switchWallet(BasicWallet wallet) async {
    if (wallet.address != currentWallet.address) {
      currentWallet = wallet;
      await Storage.instance.flushWalletManager(this);
    }
  }

  Future modifyWalletName(BasicWallet wallet, String name) async {
    if (wallet.address == currentWallet.address) {
      currentWallet.capoMeta.name = name;
      await Storage.instance.flushWalletManager(this);
    }
    wallet.capoMeta.name = name;

    await Storage.instance.flushWallet(wallet.keystore);
  }

  Future deleteWallet(BasicWallet wallet) async {
    if (wallet.address == currentWallet.address) {
      await Storage.instance.deleteWalletByID(wallet.walletID);
      if (wallets.contains(wallet)) {
        walletsID.remove(wallet.walletID);
        wallets.remove(wallet);
      }
      if (wallets.length > 0) {
        this.currentWallet = wallets.first;
        await Storage.instance.flushWalletManager(this);
      } else {
        this.currentWallet = null;
        await Storage.instance.deleteWalletManager();
      }
      return;
    }
    if (wallets.contains(wallet)) {
      await Storage.instance.deleteWalletByID(wallet.walletID);
      walletsID.remove(wallet.walletID);
      wallets.remove(wallet);
    }
    await Storage.instance.flushWalletManager(this);
  }

  Map encode() {
    final map = Map();
    map['currentWallet'] = currentWallet.encode();
    map['walletsID'] = walletsID;
    return map;
  }
}
