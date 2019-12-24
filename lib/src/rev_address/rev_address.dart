import 'dart:typed_data';

import 'package:bs58check/src/utils/base.dart';
import 'package:capo_core_dart/src/utils/keccac.dart';
import 'package:hex/hex.dart';
import "package:pointycastle/export.dart";

const prefix = {"coinId": "000000", "version": "00"};
final String alphabet =
    '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz';
final base58 = Base(alphabet);

class RevAddress {
  final String hex;
  RevAddress(this.hex);

  factory RevAddress.fromPublicKey(Uint8List publicKey) {
    return RevAddress(getAddressFromPublicKey(revPublicKeyData: publicKey));
  }

  factory RevAddress.fromPublicKeyHex(String publicKeyHex) {
    return RevAddress(
        getAddressFromPublicKey(revPublicKeyData: HEX.decode(publicKeyHex)));
  }

  static String getAddressFromPublicKey({Uint8List revPublicKeyData}) {
    if (revPublicKeyData.isEmpty) return "";
    final pk = Uint8List.view(revPublicKeyData.buffer, 1);
    final pkHash = keccak256(pk);
    if (pkHash.length > 20) {
      final pkHash20 = Uint8List.view(pkHash.buffer, pkHash.length - 20, 20);
      return getAddressFromEth(ethAddressData: pkHash20);
    }
    return "";
  }

  static String getAddressFromEth({Uint8List ethAddressData}) {
    print("ethAddress:${HEX.encode(ethAddressData)}");

    if (ethAddressData.length != 20) return "";
    final ethHash = keccak256(ethAddressData);
    final payload = prefix['coinId'] + prefix['version'] + HEX.encode(ethHash);
    final payloadBytes = Uint8List.fromList(HEX.decode(payload));
    final blake2b = Blake2bDigest(digestSize: 32);
    blake2b.reset();
    final checksum = Uint8List.view(blake2b.process(payloadBytes).buffer, 0, 4);
    final address = base58.encode(Uint8List.fromList(payloadBytes + checksum));
    return address;
  }
}
