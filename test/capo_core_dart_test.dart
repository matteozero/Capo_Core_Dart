import 'package:bs58check/bs58check.dart';
import 'package:capo_core_dart/capo_core_dart.dart';
import 'package:capo_core_dart/src/generated_protoc_files/DeployServiceV1.pbgrpc.dart';
import 'package:capo_core_dart/src/generated_protoc_files/RhoTypes.pb.dart';
import 'package:capo_core_dart/src/rnode_grpc/rnode_grpc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:hex/hex.dart';
import 'package:capo_core_dart/src/rev_address/rev_address.dart';
import 'check_balance_rho.dart';
import 'dart:convert';


// _createClient() async {
//     final trustedRoot = await rootBundle.load('assets/key/api.pem');
//     final channelCredentials = ChannelCredentials.secure(
//       certificates: trustedRoot.buffer.asUint8List(),
//     );
//     final channel = ClientChannel(
//       'hoge.com',
//       options: channelOptions,
//     );
//     client = ClipServiceClient(channel);
// }

String keystoreString = """
    
{
	"mnemonicPath": "m\/44'\/60'\/0'\/0\/0",
	"address": "d32e794ab8441487d5155851fa2f1459c5802e0f",
	"encMnemonic": {
		"encStr": "85a5987f99e27fd38e2e48bd74b5f93a451e9f2695b128cf8a1822437e65f18bf7187da387b15187706a58c244ce08a8456da889133774949cddc993cf24b10ad7046f05bfa2",
		"nonce": "71b1d005c649ffc3b232ddf9f05036b8"
	},
	"metadata": {
		"timestamp": 1597713012,
		"network": "MAINNET",
		"segWit": "NONE",
		"chainType": "ETHEREUM",
		"from": "MNEMONIC"
	},
	"version": 3,
	"crypto": {
		"mac": "f80837c17d153f1bc938dd324745b9c3cec6e92cdfd050214826fe1765368e96",
		"kdf": "scrypt",
		"ciphertext": "1304cc6031f5899b75b2e52117512b12f5824121eada27d076dbb9e3d67b0975",
		"cipher": "aes-128-ctr",
		"kdfparams": {
			"dklen": 32,
			"n": 262144,
			"salt": "06ad987b4eeee4788d83593e5b4cab68b314be6ab39b8760fd8eeab8203cc63d",
			"p": 1,
			"r": 8
		},
		"cipherparams": {
			"iv": "3a7e4851af4cacfd069a245547cb593e"
		}
	},
	"id": "648cd11e-a540-4a23-b1d4-6b27e6d47cee"
}
    """;

void main() async {
  test("test", () async {
    print("test");

  // String address = RevAddress.getAddressFromEthAddress(ethAddress: "d32e794ab8441487d5155851fa2f1459c5802e0f");
  // print("address: $address");
  // return;

  Map valueMap = json.decode(keystoreString);

  REVMnemonicKeystore keystore = REVMnemonicKeystore.fromMap(valueMap);
  print("keystore: ${keystore.export()}");
  return;

    
      // ClientChannel v_channel = ClientChannel(
      //     "node2.root-shard.mainnet.rchain.coop",
      //     port: 40401,
      //     options: const ChannelOptions(
      //         credentials: const ChannelCredentials.insecure()));
      // final vService = DeployServiceClient(v_channel);
      // String sigString = "304402201de355b1dfd456077b5d6ad203fe2581b06c46fa64c189173e9c2ad9e98180a802205f4aa15b3627768f2e26d4c6a615c214e55885b5b44f9827f8f85675b10bbae9";
      // List<int> sig = HEX.decode(sigString);
      // FindDeployQuery query = FindDeployQuery();
      // query.deployId = sig;
  
      // FindDeployResponse findDeployResponse = await vService.findDeploy(query);
      // print("findDeployResponse: $findDeployResponse");
  
          ClientChannel observer_channel = ClientChannel(
          "observer-asia.services.mainnet.rchain.coop",
          port: 40401,
          options: const ChannelOptions(
              credentials: const ChannelCredentials.insecure()));
      final deployService = DeployServiceClient(observer_channel);
      var params = ExploratoryDeployQuery();
      params.term = checkBalanceRho("11112mmfnqD3UgtpEAmFxVfU6g26W7fdyFgS6dNUpk9ycS2GXYU3pL");
      final result = await deployService.exploratoryDeploy(params);
      print("result:$result");
  
  
  // RNodeGRPC grpc = RNodeGRPC(host: "node0.root-shard.mainnet.rchain.coop",port: 40401);
  //   List<int> sig = HEX.decode("3044022051bad8d9b7ffe66a27d8fe3500003fc9c8d9e5854893c1b3d4d949802c19168102204a609f228a84a52baeb98be9d2519d6a6344a80cbaf789bde7da422f823475d1");
  //   GDeployId gDeployId = GDeployId();
  //   gDeployId.sig = sig;
  //   GUnforgeable gUnforgeable = GUnforgeable();
  //   gUnforgeable.gDeployIdBody = gDeployId;
  //   Par par = Par();
  //   par.unforgeables.add(gUnforgeable);
  //   DataAtNameQuery dataAtNameQuery = DataAtNameQuery();
  //   dataAtNameQuery.name = par;
  //   dataAtNameQuery.depth = 1000;
  //   ListeningNameDataResponse listeningNameDataResponse = await grpc.deployService.listenForDataAtName(dataAtNameQuery);
  //   print("listeningNameDataResponse:${listeningNameDataResponse.payload}");
  
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
  
