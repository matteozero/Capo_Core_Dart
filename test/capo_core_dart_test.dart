import 'package:capo_core_dart/capo_core_dart.dart';
import 'package:capo_core_dart/src/generated_protoc_files/RhoTypes.pb.dart';
import 'package:capo_core_dart/src/rnode_grpc/rnode_grpc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hex/hex.dart';

import 'check_balance_rho.dart';

void main() async {

   test("test", () async {
   print("test");

RNodeGRPC grpc = RNodeGRPC(host: "node0.root-shard.mainnet.rchain.coop",port: 40401);
  List<int> sig = HEX.decode("3044022051bad8d9b7ffe66a27d8fe3500003fc9c8d9e5854893c1b3d4d949802c19168102204a609f228a84a52baeb98be9d2519d6a6344a80cbaf789bde7da422f823475d1");
  GDeployId gDeployId = GDeployId();
  gDeployId.sig = sig;
  GUnforgeable gUnforgeable = GUnforgeable();
  gUnforgeable.gDeployIdBody = gDeployId;
  Par par = Par();
  par.unforgeables.add(gUnforgeable);
  DataAtNameQuery dataAtNameQuery = DataAtNameQuery();
  dataAtNameQuery.name = par;
  dataAtNameQuery.depth = 100;
  ListeningNameDataResponse listeningNameDataResponse = await grpc.deployService.listenForDataAtName(dataAtNameQuery);
  print("listeningNameDataResponse:${listeningNameDataResponse.payload}");
  
  

  // RNodeGRPC grpc = RNodeGRPC(host: "node0.root-shard.mainnet.rchain.coop",port: 40401);
  // String sigString = "3044022079dfb8bae214dc9c47809ed5634da02e88681d36507048fee31458c4205eeda2022057028a2239ef96f21b5825e5956f48e8a4ebf2cb685c71862e845f6f9519a87b";
  // List<int> sig = HEX.decode(sigString);
  // FindDeployQuery query = FindDeployQuery();
  // query.deployId = sig;

  // FindDeployResponse findDeployResponse = await grpc.deployService.findDeploy(query);
  // String blockHash = findDeployResponse.blockInfo.blockHash;
  // BlockQuery blockQuery = BlockQuery();
  // blockQuery.hash = blockHash;
  // BlockResponse blockResponse = await grpc.deployService.getBlock(blockQuery);

  // final cost = blockResponse.blockInfo.deploys.firstWhere((block){
  //   return block.sig == sigString;
  // });

  
  // print('cost:$cost');
// IsFinalizedQuery finalizedQuery = IsFinalizedQuery();
// finalizedQuery.hash = blockHash;
//    IsFinalizedResponse  isFinalizedResponse = await grpc.deployService.isFinalized(finalizedQuery);
//    print("isFinalized:${isFinalizedResponse.isFinalized}");

   
     
  

  

  });

}
