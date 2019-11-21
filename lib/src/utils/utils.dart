import 'dart:typed_data';

import 'package:pointycastle/api.dart';
import 'package:pointycastle/digests/sha512.dart';
import 'package:pointycastle/ecc/api.dart';
import 'package:pointycastle/ecc/curves/secp256k1.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:hex/hex.dart';
import 'numbers.dart';
final ECDomainParameters _params = ECCurve_secp256k1();

Uint8List intToByteArray(int data) {
  Uint8List result = new Uint8List(4);

  result[0] = ((data & 0xFF000000) >> 24);
  result[1] = ((data & 0x00FF0000) >> 16);
  result[2] = ((data & 0x0000FF00) >> 8);
  result[3] = ((data & 0x000000FF) >> 0);

  return result;
}

Uint8List hmacSha512(List<int> seed, List<int> passphraseByteArray) {
  var hmac = new HMac(new SHA512Digest(), 128);

  var rootSeed = new Uint8List(hmac.macSize);

  hmac.init(new KeyParameter(passphraseByteArray));

  hmac.update(seed, 0, seed.length);

  hmac.doFinal(rootSeed, 0);
  return rootSeed;
}

String getCompressedPubKey(String publicKey) {

  var ecPoint = _params.curve.decodePoint(HEX.decode(publicKey));

  if (ecPoint.y.toBigInteger().isEven) {

    return "02" + ecPoint.x.toBigInteger().toRadixString(16);

  } else if(ecPoint.y.toBigInteger().isOdd) {

    return "03" + ecPoint.x.toBigInteger().toRadixString(16);

  }
  return publicKey;
}

Uint8List privateKeyToPublic(BigInt privateKey) {
  final p = _params.G * privateKey;
  return Uint8List.view(p.getEncoded(false).buffer, 0);
}

Uint8List privateKeyHexToPublic(String privateKeyHex) {
  BigInt privateKeyInt = hexToInt(privateKeyHex) ;
  return privateKeyToPublic(privateKeyInt);
}



