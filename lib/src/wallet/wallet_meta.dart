import 'package:flutter/cupertino.dart';

// enum Source { importFromPrivateKey, importFromMnemonic, keystore }

class WalletMeta {
  static String key = "metadata";
  String name;
  String from;
  String chainType;
  String network;
  int timestamp;
  WalletMeta(
      {@required this.name, @required this.from, @required this.timestamp,this.chainType,this.network});

  factory WalletMeta.fromMap(Map map) {
    final name = map['name'];
    final from = map['from'] as String;
    final timestamp = map['timestamp'];
    final chainType = map['chainType'];
    final network = map['network'];

    return WalletMeta(name: name, from: from, timestamp: timestamp,chainType: chainType,network: network);
  }

  Map encode() {
    return {
      'name': name,
      'from': from,
      "timestamp": timestamp,
      "chainType":chainType,
      "network":network

    };
  }
}
