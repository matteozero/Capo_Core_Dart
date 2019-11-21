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
      this.kdf = "scrypt",
      this.cipher = "aes-128-ctr"});

  factory Crypto.init({String password, String privateKey}) {
    final cipherparams = Cipherparams.initRandomIV();
    final keyDerivator = ScryptKeyDerivator.deafult();
    final derivedKey = keyDerivator.deriveKey(password);
    final encryptor = Crypto.encryptor(derivedKey, HEX.decode(cipherparams.iv));
    final cipherText =
        encryptor.process(Uint8List.fromList(privateKey.codeUnits));
    final mac = generateMac(derivedKey, cipherText);

    return Crypto(
        keyDerivator: keyDerivator,
        cipherparams: cipherparams,
        mac: mac,
        cipherText: HEX.encode(cipherText));
  }

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

  String privateKey(String password) {
    final decryptedMac = macFrom(password);
    if (decryptedMac != mac) {
      throw ArgumentError(PasswordError.incorrect);
    }
    final derived = derivedKey(password);
    final encryptor = Crypto.encryptor(derived, HEX.decode(cipherparams.iv));
    final decryptStr = encryptor.process(HEX.decode(cipherText));
    return String.fromCharCodes(decryptStr);
  }

  factory Crypto.formMap(Map map) {
    final cipher = map['cipher'];
    final ciphertext = map['ciphertext'];
    final kdf = map['kdf'];
    final mac = map['mac'];
    final cipherparamsMap = map['cipherparams'] as Map<String, dynamic>;
    final kdfparamsMap = map['kdfparams'] as Map<String, dynamic>;
    final cipherparams = Cipherparams.fromMap(cipherparamsMap);
    final keyDerivator = ScryptKeyDerivator.fromMap(kdfparamsMap);
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
