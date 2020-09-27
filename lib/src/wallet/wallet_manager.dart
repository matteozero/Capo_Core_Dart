import 'dart:async';
import 'dart:convert';

import 'package:capo_core_dart/capo_core_dart.dart';
import 'package:capo_core_dart/src/utils/app_error.dart';
import 'package:capo_core_dart/src/wallet//srorage/storage.dart';
import 'package:capo_core_dart/src/wallet/keystore/keystore.dart';
import 'package:capo_core_dart/src/wallet/keystore/rev_keystore.dart';
import 'package:capo_core_dart/src/wallet/keystore/rev_mnemonic_keystore.dart';
import 'package:flutter/cupertino.dart';
import 'basic_wallet.dart';
import 'package:capo_token_core_plugin/capo_token_core_plugin.dart';

class WalletManager {
  Future<bool> ready;
  BasicWallet currentWallet;
  List<BasicWallet> wallets = [];
  List<String> walletsID = [];

  factory WalletManager() =>_getInstance();
  static WalletManager get shared => _getInstance();
  static WalletManager _instance;

  WalletManager._internal() {
    ready = new Future<bool>(() async {
      // await WalletManager.tryToLaodWalletManager();
      Map map = await Storage.instance.tryToLaodWalletManager();
        if(map == null){
      return true;
    }
    final currentWalletMap = map['currentWallet'];
    final currentWallet = BasicWallet.fromMap(currentWalletMap);
    final walletsIDList = map['walletsID'] as List;
    List<String> walletsID = walletsIDList.map((i) => i as String).toList();
    final wallets = await Storage.instance.loadWalletByIDs(walletsID);
    this.currentWallet = currentWallet;
    this.wallets = wallets;
    this.walletsID = walletsID;

      return true;
    });
  }


  static WalletManager _getInstance() {
    if (_instance == null) {
      _instance = new WalletManager._internal();
    }
    return _instance;
  }

 static Future importFromMnemonic({
    @required String password,
    @required String mnemonic,
    @required String name

  }) async {

  String keystoreString = await CapoTokenCorePlugin.importMnenonic(mnemonic, password);
  Map map = json.decode(keystoreString);

  REVMnemonicKeystore keystore = REVMnemonicKeystore.fromMap(map);
  keystore.meta.name = name;
  String revAddress = RevAddress.getAddressFromEthAddress(ethAddress: keystore.address);
  keystore.address = revAddress;
  await WalletManager.shared.append(keystore);

  }

  static Future importFromPrivateKey({
    @required String password,
    @required String privateKey,
    @required String name

  }) async {
      String keystoreString = await CapoTokenCorePlugin.importPrivateKey(privateKey, password);
      Map map = json.decode(keystoreString);
      REVKeystore keystore = REVKeystore.fromMap(map);
      keystore.meta.name = name;
      String revAddress = RevAddress.getAddressFromEthAddress(ethAddress: keystore.address);
      keystore.address = revAddress;
      await WalletManager.shared.append(keystore);
  }


  
 static Future importFromKeystore({
    @required String password,
    @required String keystoreString,
    @required String name

  }) async {
      String importKeystore = await CapoTokenCorePlugin.importKeystore(keystoreString, password);
      Map map = json.decode(importKeystore);
      REVKeystore keystore = REVKeystore.fromMap(map);
      keystore.meta.name = name;
      String revAddress = RevAddress.getAddressFromEthAddress(ethAddress: keystore.address);
      keystore.address = revAddress;
      await WalletManager.shared.append(keystore);
  }


  append(Keystore keystore) async {
    final wallet = BasicWallet(keystore: keystore);
    if (findWalletByAddress(wallet.address) != null) {
      throw AppError(type: AppErrorType.addressAlreadyExist);
    }
    wallets.add(wallet);
    walletsID.add(wallet.walletID);
    this.currentWallet = wallet;
    await Storage.instance.flushWalletManager(this);
    await Storage.instance.flushWallet(wallet.keystore);
  }

  BasicWallet findWalletByAddress(String address) {
    if (wallets == null || wallets.isEmpty) return null;
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
