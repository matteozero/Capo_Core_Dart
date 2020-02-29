import 'package:capo_core_dart/capo_core_dart.dart';
import 'package:capo_core_dart/src/rnode_grpc/rnode_grpc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'transfer_funds_rho.dart';

void main() async {

   test("transfer funds", () async {
   print("transfer funds");
     final privateKey =
      "";
  final publicKey = privateKeyHexToPublic(privateKey);
  final address = RevAddress.fromPublicKey(publicKey);
    String term = transferFundsRho(revAddrFrom: address.hex,revAddrTo: "1111cdQRHYBG4qmvJPZb1aMNrHZ6HvJb4Q3LTS2FdC9tvweS9c4k1",amount: 1
        );

  RNodeGRPC grpc = RNodeGRPC(host: "node0.root-shard.mainnet.rchain.coop",port: 40401);
    //  RNodeGRPC grpc = RNodeGRPC(host: "localhost",port: 40401);
 await grpc.sendDeploy(deployCode: term, privateKey: privateKey).then((response){

   print("response:$response");
 }).catchError((error){
   print("catchError: $error");
 });
    
  });

}
