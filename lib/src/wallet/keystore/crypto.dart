import 'dart:math';
import 'dart:typed_data';

import 'package:capo_core_dart/src/utils/app_error.dart';
import 'package:capo_core_dart/src/utils/keccac.dart';
import 'package:capo_core_dart/src/utils/random_bridge.dart';
import 'package:capo_core_dart/src/utils/typed_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:hex/hex.dart';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/block/aes_fast.dart';
import 'package:pointycastle/key_derivators/api.dart';
import 'package:pointycastle/key_derivators/scrypt.dart';
import 'package:pointycastle/stream/ctr.dart';

abstract class _KeyDerivator {
  Uint8List deriveKey(String password);

  String get name;

  Map<String, dynamic> encode();
}

class ScryptKeyDerivator extends _KeyDerivator {
  final int dklen;
  final int n;
  final int r;
  final int p;
  final String salt;

  ScryptKeyDerivator(this.dklen, this.n, this.r, this.p, this.salt);
  factory ScryptKeyDerivator.deafult() {
    final dartRandom = RandomBridge(Random.secure());
    final salt = dartRandom.nextBytes(32);
    return ScryptKeyDerivator(32, 8192, 8, 1, HEX.encode(salt));
  }

  factory ScryptKeyDerivator.fromMap(Map map) {
    final dklen = map['dklen'];
    final n = map['n'];
    final r = map['r'];
    final p = map['p'];
    final salt = map['salt'];
    return ScryptKeyDerivator(dklen, n, r, p, salt);
  }

  @override
  Uint8List deriveKey(String password) {
    final impl = Scrypt()
      ..init(ScryptParameters(n, r, p, dklen, HEX.decode(salt)));

    return impl.process(Uint8List.fromList(password.codeUnits));
  }

  @override
  Map<String, dynamic> encode() {
    return {
      'dklen': dklen,
      'n': n,
      'r': r,
      'p': p,
      'salt': salt,
    };
  }

  @override
  final String name = 'scrypt';
}



class Pbkdf2KeyDerivator extends _KeyDerivator {
  final int dklen;
  final int c;
  final String prf;
  final String salt;

  Pbkdf2KeyDerivator(this.dklen, this.c, this.prf, this.salt);
 

  factory Pbkdf2KeyDerivator.fromMap(Map map) {
    final dklen = map['dklen'];
    final c = map['c'];
    final prf = map['prf'];
    final salt = map['salt'];
    return Pbkdf2KeyDerivator(dklen, c, prf, salt);
  }

  // @override
  // Uint8List deriveKey(String password) {
  //   return Uint8List.fromList([]);
  // }

  @override
  Map<String, dynamic> encode() {
    return {
      'dklen': dklen,
      'c': c,
      'prf': prf,
      'salt': salt,
    };
  }

  @override
  final String name = 'pbkdf2';

  @override
  Uint8List deriveKey(String password) {
    throw UnimplementedError();
  }
}

class Cipherparams {
  String iv;
  Cipherparams(this.iv);
  Map<String, dynamic> encode() {
    return {"iv": iv};
  }

  factory Cipherparams.initRandomIV() {
    final dartRandom = RandomBridge(Random.secure());
    final iv = HEX.encode(dartRandom.nextBytes(128 ~/ 8));
    return Cipherparams(iv);
  }
  factory Cipherparams.fromMap(Map map) {
    final iv = map['iv'];
    return Cipherparams(iv);
  }
}

class Crypto {
  String cipherText;
  _KeyDerivator keyDerivator;
  Cipherparams cipherparams;
  String mac;
  String cipher;
  String kdf;
  Crypto(
      {@required this.keyDerivator,
      @required this.cipherparams,
      @required this.mac,
      @required this.cipherText,
        @required this.kdf,
        @required this.cipher}
        );


  Uint8List derivedKey(String password) {
    return keyDerivator.deriveKey(password);
  }

   String macFrom(String password) {
    return macForDerivedKey(derivedKey(password));
  }

   String macForDerivedKey(Uint8List key) {
    return generateMac(key, HEX.decode(cipherText));
  }

  static String generateMac(List<int> dk, List<int> ciphertext) {
    final macBody = <int>[]..addAll(dk.sublist(16, 32))..addAll(ciphertext);

    return HEX.encode(keccak256(uint8ListFromList(macBody)));
  }

  static CTRStreamCipher encryptor(Uint8List key, Uint8List iv) {
    return CTRStreamCipher(AESFastEngine())
      ..init(false, ParametersWithIV(KeyParameter(key), iv));
  }

    static CTRStreamCipher decryptor(Uint8List key, Uint8List iv) {
    return CTRStreamCipher(AESFastEngine())
      ..init(true, ParametersWithIV(KeyParameter(key), iv));
  }

  

  String privateKey(String password) {
    final decryptedMac = macFrom(password);
    if (decryptedMac != mac) {
      throw AppError(type: AppErrorType.passwordIncorrect);
    }
    final derived = Uint8List.view(derivedKey(password).buffer, 0, 16);
    final decryptor = Crypto.decryptor(derived, HEX.decode(cipherparams.iv));
    final decryptStr = decryptor.process(HEX.decode(cipherText));
    return HEX.encode(decryptStr);
  }

  factory Crypto.fromMap(Map map) {
    final cipher = map['cipher'];
    final ciphertext = map['ciphertext'];
    final String kdf = map['kdf'];
    final mac = map['mac'];
    final cipherparamsMap = map['cipherparams'] as Map<String, dynamic>;
    final kdfparamsMap = map['kdfparams'] as Map<String, dynamic>;
    final cipherparams = Cipherparams.fromMap(cipherparamsMap);
    _KeyDerivator keyDerivator;
    if(kdf == "pbkdf2"){
       keyDerivator = Pbkdf2KeyDerivator.fromMap(kdfparamsMap);
    }else if(kdf == "scrypt"){
      keyDerivator = ScryptKeyDerivator.fromMap(kdfparamsMap);
    }else {
      throw AppErrorType.operationUnsupported;
    }
    return Crypto(
        cipherText: ciphertext,
        cipherparams: cipherparams,
        mac: mac,
        cipher: cipher,
        kdf: kdf,
        keyDerivator: keyDerivator);
  }

  Map encode() {
    final map = {
      "cipher": cipher,
      "ciphertext": cipherText,
      "cipherparams": cipherparams.encode(),
      "kdf": keyDerivator.name,
      "kdfparams": keyDerivator.encode(),
      "mac": mac
    };
    return map;
  }
}
