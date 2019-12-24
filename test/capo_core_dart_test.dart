import 'package:capo_core_dart/capo_core_dart.dart';
import 'package:capo_core_dart/src/rnode_grpc/rnode_grpc.dart';

import 'check_balance_rho.dart';

//node1.testnet.rchain-dev.tk
void main() async {
  final privateKey =
      "016120657a8f96c8ee5c50b138c70c66a2b1366f81ea41ae66065e51174e158e";
  final publicKey = privateKeyHexToPublic(privateKey);
  final address = RevAddress.fromPublicKey(publicKey);
  print("address:${address.hex}");
  String term = checkBalanceRho(address.hex);

  RNodeGRPC grpc = RNodeGRPC(host: "localhost");
  await grpc
      .sendDeploy(deployCode: term, privateKey: privateKey)
      .then((result) {
    print("result:$result");
  }).catchError((error) {
    print("error:$error");
  });

  // test('adds one to input values', () async {

  // });
}
