import 'dart:convert';
import 'dart:typed_data';

import 'package:capo_core_dart/src/utils/typed_data.dart';
import 'package:keccak/keccak.dart';
import 'package:pointycastle/digests/sha3.dart';

const int _shaBytes = 256 ~/ 8;
// keccak is implemented as sha3 digest in pointycastle, see
// https://github.com/PointyCastle/pointycastle/issues/128
final SHA3Digest sha3digest = SHA3Digest(_shaBytes * 8);

Uint8List keccak256(Uint8List input) {
  return keccak(input);
}
