import 'package:flutter/cupertino.dart';

enum Source { importFromPrivateKey, importFromMnemonic, create }

class WalletMeta {
  static String key = "CapoMeta";
  String name;
  Source source;
  int timestamp;
  WalletMeta(
      {@required this.name, @required this.source, @required this.timestamp});

  factory WalletMeta.fromMap(Map map) {
    final name = map['name'];
    final sourceStr = map['source'] as String;
    final timestamp = map['timestamp'];
    Source source;
    if (sourceStr == "importFromPrivateKey") {
      source = Source.importFromPrivateKey;
    } else if (sourceStr == "importFromMnemonic") {
      source = Source.importFromMnemonic;
    } else if (sourceStr == "create") {
      source = Source.create;
    }
    return WalletMeta(name: name, source: source, timestamp: timestamp);
  }

  Map encode() {
    return {
      'name': name,
      'source': source.toString().split(".").last,
      "timestamp": timestamp
    };
  }
}
