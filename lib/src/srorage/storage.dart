import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:capo_core_dart/src/keystore/keystore.dart';
import 'package:capo_core_dart/src/wallet/basic_wallet.dart';
import 'package:capo_core_dart/src/wallet/wallet_manager.dart';
import 'package:path_provider/path_provider.dart';

class Storage {
  factory Storage() => _getInstance();
  static Storage get instance => _getInstance();
  static Storage _instance;
  Storage._internal();
  static Storage _getInstance() {
    if (_instance == null) {
      _instance = Storage._internal();
    }
    return _instance;
  }

  static String identityFileName = "identity.json";

  Future<String> get walletsDirectory async {
    final dir = await getApplicationDocumentsDirectory();
    final walletDirectory = Directory("${dir.path}/wallets");
    final exists = await walletDirectory.exists();
    if (exists) {
      return walletDirectory.path;
    } else {
      walletDirectory.createSync();
    }
    return walletDirectory.path;
  }

  Future<File> flushWallet(Keystore keystore) async {
    final id = keystore.id;
    final content = json.encode(keystore.dump());
    return writeContent(content, id);
  }

  Future<File> flushWalletManager(WalletManager walletManager) async {
    final content = json.encode(walletManager.encode());
    return writeContent(content, identityFileName);
  }

  Future deleteWalletByID(String walletID) {
    return deleteFile(walletID);
  }

  Future deleteFile(String fileName) async {
    final walletsDir = await walletsDirectory;
    final filePath = walletsDir + "/" + fileName;
    final file = File(filePath);
    return file.deleteSync();
  }

  Future<WalletManager> tryToLaodWalletManager() async {
    Map map = await loadJson(identityFileName);
    if (map == null) return null;
    return WalletManager.fromMap(map);
  }

  Future<List<BasicWallet>> loadWalletByIDs(List walletIDs) async {
    List<BasicWallet> wallets = [];
    for (String walletID in walletIDs) {
      Map map = await loadJson(walletID);
      final wallet = BasicWallet.fromMap(map);
      wallets.add(wallet);
    }
    return wallets;
  }

  Future<Map> loadJson(String fileName) async {
    try {
      final jsonStr = await readFrom(fileName);
      return json.decode(jsonStr);
    } catch (e) {
      return null;
    }
  }

  Future<File> writeContent(String content, String fileName) async {
    final walletsDir = await walletsDirectory;
    final filePath = walletsDir + "/" + fileName;
    final file = File(filePath);
    final exists = file.existsSync();
    if(!exists){
      file.createSync();
    }
    return file.writeAsString(content);
  }

  Future<String> readFrom(String fileName) async {
    try {
      final walletsDir = await walletsDirectory;
      final filePath = walletsDir + "/" + fileName;
      final file = File(filePath);
      String body = await file.readAsString();
      return body;
    } catch (e) {
      throw e;
    }
  }
}
