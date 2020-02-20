import 'package:capo_core_dart/src/generated_protoc_files/DeployServiceCommon.pb.dart';
import 'package:capo_core_dart/src/generated_protoc_files/DeployServiceV1.pbgrpc.dart';
import 'package:capo_core_dart/src/rnode_grpc/grpc_web/channel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';

import 'check_balance_rho.dart';

void main() async {

  test("get_balance", () async {
    ClientChannel _channel = HttpClientChannel("34.66.209.49",
        port: 40403,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    final gRpc = DeployServiceClient(_channel);
    String term = checkBalanceRho(
        "");

    var params = ExploratoryDeployQuery();
    params.term = term;
    var response = await gRpc.exploratoryDeploy(params);
    print("response: ${response.result.postBlockData.first.exprs.first}");
    
  });

}
