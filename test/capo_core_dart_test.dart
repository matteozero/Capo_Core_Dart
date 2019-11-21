import 'package:capo_core_dart/src/srorage/storage.dart';
import 'package:capo_core_dart/src/wallet/wallet_meta.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () async {
    final meta = WalletMeta(
        name: "test",
        source: Source.importFromMnemonic,
        timestamp: DateTime.now().millisecondsSinceEpoch);
    var walletManager = await Storage.instance.tryToLaodWalletManager();
    print(walletManager == null);
  });
}
