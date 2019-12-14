import 'dart:typed_data';
import 'package:bip32/bip32.dart' as bip32;
import 'package:bip39/bip39.dart' as bip39;
import 'package:capo_core_dart/capo_core_dart.dart';
import 'package:capo_core_dart/src/rev_address/rev_address.dart';
import 'package:capo_core_dart/src/utils/utils.dart';
import 'package:hex/hex.dart';

int keyLength = 64;

class RevKey {
   String privateKey;
  String get address {
    Uint8List publicKey = privateKeyHexToPublic(privateKey);
    return RevAddress.fromPublicKey(publicKey).hex;
  }

  RevKey(String privateKey){
   if(!verify(privateKey)) throw AppError(type:  AppErrorType.privateKeyInvalid);
    this.privateKey = privateKey;
  }

  factory RevKey.fromMnemonic(String mnemonic,
      {String path = "m/44'/60'/0'/0/0"}) {
    bool validate = bip39.validateMnemonic(mnemonic);
    if (!validate) throw AppError(type: AppErrorType.mnemonicInvalid);
    String seed = bip39.mnemonicToSeedHex(mnemonic);
    bip32.BIP32 root = bip32.BIP32.fromSeed(HEX.decode(seed));
    bip32.BIP32 child = root.derivePath(path);
    String privateKey = HEX.encode(child.privateKey);
    return RevKey(privateKey);
  }

  static String mnemonicToAddress(String mnemonic) {
    return RevKey.fromMnemonic(mnemonic).address;
  }

  bool verify(String privateKey) {
    try {
   final _ = HEX.decode(privateKey);
    }catch (e){
      return false;
    }
    if(privateKey.length != keyLength){
      return false;
    }
    return true;
  }

}
