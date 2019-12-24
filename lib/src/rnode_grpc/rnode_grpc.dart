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
  DeployServiceClient _deployService;
  ProposeServiceClient _proposeService;
  RNodeGRPC({@required host, port = 40401}) {
    this.host = host;
    this.port = port;
    ClientChannel _channel = ClientChannel(host,
        port: port,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    _deployService = DeployServiceClient(_channel);
    _proposeService = ProposeServiceClient(_channel);
  }

  void switchChannelHost({@required String host, int port = 40401}) {
    this.host = host;
    ClientChannel channel = ClientChannel(host,
        port: port,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    _deployService = DeployServiceClient(channel);
    _proposeService = ProposeServiceClient(channel);
  }

  Future sendDeploy(
      {@required String deployCode, @required String privateKey}) async {
    final blocksQuery = BlocksQuery();
    blocksQuery.depth = 1;
    final blocks = await _deployService.getBlocks(blocksQuery).first;
    final blockNumber = blocks.blockInfo.blockNumber;
    print("blockNumber: $blockNumber");

    final data = DeployDataProto();
    data.term = deployCode;
    final signedData = rSign.sign(
        blockNumber: blockNumber, unSignData: data, privateKey: privateKey);
    var _ =
        await _deployService.doDeploy(signedData).then((deployResult) async {
      print("deployResult:$deployResult");
      var p = PrintUnmatchedSendsQuery();
      p.printUnmatchedSends = true;
      final _ = await _proposeService.propose(p).then((value) async {
        await getDataForDeploy(signedData);
      }).catchError((error) {
        print("error:$error");
      });
    });
    return null;
  }

//  signData.deployer = puk;
//  signData.sig = sig;
//  signData.sigAlgorithm = "secp256k1";
  Future getDataForDeploy(DeployDataProto signedData) async {
    print("signedData.sig\n" + HEX.encode(signedData.sig));
    var gDeployId = GDeployId();
    gDeployId.sig = signedData.sig;
    var g = GUnforgeable();
    g.gDeployIdBody = gDeployId;
    var name = Par();
    name.unforgeables.add(g);
    var dataAtNameQuery = DataAtNameQuery();
    dataAtNameQuery.depth = -1;
    dataAtNameQuery.name = name;

    return await _deployService
        .listenForDataAtName(dataAtNameQuery)
        .then((value) {
      print("listenForDataAtName reslut:$value");
    }).catchError((error) {
      print("error:$error");
    });
  }
}
