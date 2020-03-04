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
  List<int> sig = HEX.decode("3044022054c843e0d532a677edbc81a8388ca84dc8a3c427005cadcbddee3189ff2842050220651d68135ec789f25e0e2882263963c282dda1f90c47fbe0d6b3ca5b8b1cd260");
  GDeployId gDeployId = GDeployId();
  gDeployId.sig = sig;
  GUnforgeable gUnforgeable = GUnforgeable();
  gUnforgeable.gDeployIdBody = gDeployId;
  Par par = Par();
  par.unforgeables.add(gUnforgeable);
  DataAtNameQuery dataAtNameQuery = DataAtNameQuery();
  dataAtNameQuery.name = par;
  dataAtNameQuery.depth = 10;
  ListeningNameDataResponse listeningNameDataResponse = await grpc.deployService.listenForDataAtName(dataAtNameQuery);
  print("listeningNameDataResponse:$listeningNameDataResponse");
   /*
  FindDeployQuery query = FindDeployQuery();
  query.deployId = sig;

  FindDeployResponse findDeployResponse = await grpc.deployService.findDeploy(query);

  String blockHash = findDeployResponse.blockInfo.blockHash;
IsFinalizedQuery finalizedQuery = IsFinalizedQuery();
finalizedQuery.hash = blockHash;
   IsFinalizedResponse  isFinalizedResponse = await grpc.deployService.isFinalized(finalizedQuery);
   print("isFinalized:${isFinalizedResponse.isFinalized}");

   */

  });

}
