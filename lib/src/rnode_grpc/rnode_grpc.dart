library rnode_grpc;

import 'package:capo_core_dart/src/generated_protoc_files/CasperMessage.pb.dart';
import 'package:capo_core_dart/src/generated_protoc_files/DeployServiceCommon.pb.dart';
import 'package:capo_core_dart/src/generated_protoc_files/DeployServiceV1.pbgrpc.dart';
import 'package:capo_core_dart/src/generated_protoc_files/ProposeServiceCommon.pb.dart';
import 'package:capo_core_dart/src/generated_protoc_files/ProposeServiceV1.pbgrpc.dart';
import 'package:capo_core_dart/src/generated_protoc_files/RhoTypes.pb.dart';
import 'package:capo_core_dart/src/rsign/rsign.dart' as rSign;
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';
import 'package:hex/hex.dart';

class RNodeGRPC {
  String host;
  int port;
  DeployServiceClient deployService;
  ProposeServiceClient proposeService;
  RNodeGRPC({@required host, port = 40401}) {
    this.host = host;
    this.port = port;
    ClientChannel _channel = ClientChannel(host,
        port: port,
        options: const ChannelOptions(
            idleTimeout: Duration(seconds: 10),
            connectionTimeout: Duration(seconds: 10),
            credentials: const ChannelCredentials.insecure()));

    deployService = DeployServiceClient(_channel);
    proposeService = ProposeServiceClient(_channel);
  }

  void switchChannelHost({@required String host, int port = 40401}) {
    this.host = host;
    ClientChannel channel = ClientChannel(host,
        port: port,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    deployService = DeployServiceClient(channel);
    proposeService = ProposeServiceClient(channel);
  }

  Future<ExploratoryDeployResponse> sendExploratoryDeploy(
      {@required String deployCode}) async {
    var params = ExploratoryDeployQuery();
    params.term = deployCode;
    var response = await deployService.exploratoryDeploy(params);
    return response;
  }

  Future<Map> sendDeploy(
      {@required String deployCode, @required String privateKey})  async {
    final blocksQuery = BlocksQuery();
    blocksQuery.depth = 1;
    final blocks = await deployService.getBlocks(blocksQuery).first;
    final blockNumber = blocks.blockInfo.blockNumber;

    final data = DeployDataProto();
    data.term = deployCode;
    final DeployDataProto signedData = rSign.sign(
        blockNumber: blockNumber, unSignData: data, privateKey: privateKey);
    DeployResponse response = await deployService.doDeploy(signedData);
    return {"deployID":HEX.encode(signedData.sig),"response":response};
  }

  Future<ListeningNameDataResponse> getDataForDeploy(List<int> deployId) async {
    var gDeployId = GDeployId();
    gDeployId.sig = deployId;
    var g = GUnforgeable();
    g.gDeployIdBody = gDeployId;
    var name = Par();
    name.unforgeables.add(g);
    var dataAtNameQuery = DataAtNameQuery();
    dataAtNameQuery.depth = -1;
    dataAtNameQuery.name = name;
    return deployService.listenForDataAtName(dataAtNameQuery);
  }
}
