library rnode_grpc;

import 'package:capo_core_dart/src/generated_protoc_files/CasperMessage.pb.dart';
import 'package:capo_core_dart/src/generated_protoc_files/DeployServiceCommon.pb.dart';
import 'package:capo_core_dart/src/generated_protoc_files/DeployServiceV1.pbgrpc.dart';
import 'package:capo_core_dart/src/generated_protoc_files/ProposeServiceCommon.pb.dart';
import 'package:capo_core_dart/src/generated_protoc_files/ProposeServiceV1.pbgrpc.dart';
import 'package:capo_core_dart/src/generated_protoc_files/RhoTypes.pb.dart';
import 'package:capo_core_dart/src/rsign/rsign.dart' as rSign;
import 'package:grpc/grpc.dart';

class RNodeGRPC {
  String host;
  int port;
  DeployServiceClient _deployService;
  ProposeServiceClient _proposeService;
  RNodeGRPC({String host, port = 40401}) {
    this.host = host;
    this.port = port;
    ClientChannel _channel = ClientChannel(host,
        port: port,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    _deployService = DeployServiceClient(_channel);
    _proposeService = ProposeServiceClient(_channel);
  }

  void switchChannelHost({host: String, int port}) {
    this.host = host;
    ClientChannel channel = ClientChannel(host,
        port: port,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    _deployService = DeployServiceClient(channel);
    _proposeService = ProposeServiceClient(channel);
  }

  Future sendDeploy(String code, String privateKey) async {
    final data = DeployDataProto();
    data.term = code;
    final signedData = rSign.sign(data, privateKey);
    final result = await _deployService.doDeploy(signedData);
    var p = PrintUnmatchedSendsQuery();
    var proposeResult = await _proposeService.propose(p);
    print("proposeResult: $proposeResult");
//    if (proposeResult.error != null) {
//      throw FormatException(proposeResult.error.toString());
//    }
    return signedData;
  }

  Future getDataForDeploy(DeployDataProto signedData) async {
    var gDeployId = GDeployId();
    gDeployId.sig = signedData.writeToBuffer();
    var g = GUnforgeable();
    g.gDeployIdBody = gDeployId;

    var name = Par();
    name.unforgeables.add(g);
    var dataAtNameQuery = DataAtNameQuery();
    dataAtNameQuery.depth = -1;
    dataAtNameQuery.name = name;
    return _deployService.listenForDataAtName(dataAtNameQuery);
  }
}
