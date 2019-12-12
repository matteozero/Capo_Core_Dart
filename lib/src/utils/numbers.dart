import 'package:convert/convert.dart';
// ignore: implementation_imports
import 'package:pointycastle/src/utils.dart' as pUtils;

/// If present, removes the 0x from the start of a hex-string.
String strip0x(String hex) {
	if (hex.startsWith("0x"))
		return hex.substring(2);
	return hex;
}

/// Converts the [number], which can either be a dart [int] or a [BigInt],
/// into a hexadecimal representation. The number needs to be positive or zero.
///
/// When [pad] is set to true, this method will prefix a zero so that the result
/// will have an even length. When [include0x] is set to true, the output will
/// have "0x" prepended to it.
String toHex(dynamic number, {bool pad: false, bool include0x: false}) {
	String toHexSimple() {
		if (number is int)
			return number.toRadixString(16);
		else if (number is BigInt)
			return number.toRadixString(16);
		else
			throw new TypeError();
	}

	var hexString = toHexSimple();
	if (pad && !hexString.length.isEven)
		hexString = "0" + hexString;
	if (include0x)
		hexString = "0x" + hexString;

	return hexString;
}

/// Converts the [bytes] given as a list of integers into a hexadecimal
/// representation.
///
/// If any of the bytes is outside of the range [0, 256], the method will throw.
/// The outcome of this function will prefix a 0 if it would otherwise not be
/// of even length. If [include0x] is set, it will prefix "0x" to the hexadecimal
/// representation.
String bytesToHex(List<int> bytes, {bool include0x: false}) {
  return (include0x ? "0x" : "") + hex.encode(bytes);
}


/// Converts the given number, either a [int] or a [BigInteger] to a list of
/// bytes representing the same value.
List<int> numberToBytes(dynamic number) {
  if (number is BigInt)
    return pUtils.encodeBigInt(number);

	String hexString = toHex(number, pad: true);
	return hex.decode(hexString);
}

/// Converts the hexadecimal string, which can be prefixed with 0x, to a byte
/// sequence.
List<int> hexToBytes(String hexStr) {
	return hex.decode(strip0x(hexStr));
}

///Converts the bytes from that list (big endian) to a BigInt.
BigInt bytesToInt(List<int> bytes) => pUtils.decodeBigInt(bytes);

List<int> intToBytes(BigInt number) => pUtils.encodeBigInt(number);

///Takes the hexadecimal input and creates a BigInt.
BigInt hexToInt(String hex) {
  return BigInt.parse(strip0x(hex), radix: 16);
}