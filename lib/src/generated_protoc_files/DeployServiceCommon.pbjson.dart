///
//  Generated code. Do not modify.
//  source: DeployServiceCommon.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const FindDeployQuery$json = const {
  '1': 'FindDeployQuery',
  '2': const [
    const {'1': 'deployId', '3': 1, '4': 1, '5': 12, '10': 'deployId'},
  ],
};

const BlockQuery$json = const {
  '1': 'BlockQuery',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
  ],
};

const BlocksQuery$json = const {
  '1': 'BlocksQuery',
  '2': const [
    const {'1': 'depth', '3': 1, '4': 1, '5': 5, '10': 'depth'},
  ],
};

const DataAtNameQuery$json = const {
  '1': 'DataAtNameQuery',
  '2': const [
    const {'1': 'depth', '3': 1, '4': 1, '5': 5, '10': 'depth'},
    const {'1': 'name', '3': 2, '4': 1, '5': 11, '6': '.Par', '10': 'name'},
  ],
};

const ContinuationAtNameQuery$json = const {
  '1': 'ContinuationAtNameQuery',
  '2': const [
    const {'1': 'depth', '3': 1, '4': 1, '5': 5, '10': 'depth'},
    const {'1': 'names', '3': 2, '4': 3, '5': 11, '6': '.Par', '10': 'names'},
  ],
};

const VisualizeDagQuery$json = const {
  '1': 'VisualizeDagQuery',
  '2': const [
    const {'1': 'depth', '3': 1, '4': 1, '5': 5, '10': 'depth'},
    const {'1': 'showJustificationLines', '3': 2, '4': 1, '5': 8, '10': 'showJustificationLines'},
  ],
};

const MachineVerifyQuery$json = const {
  '1': 'MachineVerifyQuery',
};

const PrivateNamePreviewQuery$json = const {
  '1': 'PrivateNamePreviewQuery',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 12, '10': 'user'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'nameQty', '3': 3, '4': 1, '5': 5, '10': 'nameQty'},
  ],
};

const LastFinalizedBlockQuery$json = const {
  '1': 'LastFinalizedBlockQuery',
};

const IsFinalizedQuery$json = const {
  '1': 'IsFinalizedQuery',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
  ],
};

const BondStatusQuery$json = const {
  '1': 'BondStatusQuery',
  '2': const [
    const {'1': 'publicKey', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

const BondInfo$json = const {
  '1': 'BondInfo',
  '2': const [
    const {'1': 'validator', '3': 1, '4': 1, '5': 9, '10': 'validator'},
    const {'1': 'stake', '3': 2, '4': 1, '5': 3, '10': 'stake'},
  ],
};

const DeployInfo$json = const {
  '1': 'DeployInfo',
  '2': const [
    const {'1': 'deployer', '3': 1, '4': 1, '5': 9, '10': 'deployer'},
    const {'1': 'term', '3': 2, '4': 1, '5': 9, '10': 'term'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'sig', '3': 4, '4': 1, '5': 9, '10': 'sig'},
    const {'1': 'sigAlgorithm', '3': 5, '4': 1, '5': 9, '10': 'sigAlgorithm'},
    const {'1': 'phloPrice', '3': 7, '4': 1, '5': 3, '10': 'phloPrice'},
    const {'1': 'phloLimit', '3': 8, '4': 1, '5': 3, '10': 'phloLimit'},
    const {'1': 'validAfterBlockNumber', '3': 9, '4': 1, '5': 3, '10': 'validAfterBlockNumber'},
    const {'1': 'cost', '3': 10, '4': 1, '5': 4, '10': 'cost'},
    const {'1': 'errored', '3': 11, '4': 1, '5': 8, '10': 'errored'},
    const {'1': 'systemDeployError', '3': 12, '4': 1, '5': 9, '10': 'systemDeployError'},
  ],
};

const LightBlockInfo$json = const {
  '1': 'LightBlockInfo',
  '2': const [
    const {'1': 'blockHash', '3': 1, '4': 1, '5': 9, '10': 'blockHash'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'seqNum', '3': 3, '4': 1, '5': 3, '10': 'seqNum'},
    const {'1': 'sig', '3': 4, '4': 1, '5': 9, '10': 'sig'},
    const {'1': 'sigAlgorithm', '3': 5, '4': 1, '5': 9, '10': 'sigAlgorithm'},
    const {'1': 'shardId', '3': 6, '4': 1, '5': 9, '10': 'shardId'},
    const {'1': 'extraBytes', '3': 7, '4': 1, '5': 12, '10': 'extraBytes'},
    const {'1': 'version', '3': 8, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'timestamp', '3': 9, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'headerExtraBytes', '3': 10, '4': 1, '5': 12, '10': 'headerExtraBytes'},
    const {'1': 'parentsHashList', '3': 11, '4': 3, '5': 9, '10': 'parentsHashList'},
    const {'1': 'blockNumber', '3': 12, '4': 1, '5': 3, '10': 'blockNumber'},
    const {'1': 'preStateHash', '3': 13, '4': 1, '5': 9, '10': 'preStateHash'},
    const {'1': 'postStateHash', '3': 14, '4': 1, '5': 9, '10': 'postStateHash'},
    const {'1': 'bodyExtraBytes', '3': 15, '4': 1, '5': 12, '10': 'bodyExtraBytes'},
    const {'1': 'bonds', '3': 16, '4': 3, '5': 11, '6': '.casper.BondInfo', '10': 'bonds'},
    const {'1': 'blockSize', '3': 17, '4': 1, '5': 9, '10': 'blockSize'},
    const {'1': 'deployCount', '3': 18, '4': 1, '5': 5, '10': 'deployCount'},
    const {'1': 'faultTolerance', '3': 19, '4': 1, '5': 2, '10': 'faultTolerance'},
  ],
};

const BlockInfo$json = const {
  '1': 'BlockInfo',
  '2': const [
    const {'1': 'blockInfo', '3': 1, '4': 1, '5': 11, '6': '.casper.LightBlockInfo', '10': 'blockInfo'},
    const {'1': 'deploys', '3': 2, '4': 3, '5': 11, '6': '.casper.DeployInfo', '10': 'deploys'},
  ],
};

const DataWithBlockInfo$json = const {
  '1': 'DataWithBlockInfo',
  '2': const [
    const {'1': 'postBlockData', '3': 1, '4': 3, '5': 11, '6': '.Par', '10': 'postBlockData'},
    const {'1': 'block', '3': 2, '4': 1, '5': 11, '6': '.casper.LightBlockInfo', '10': 'block'},
  ],
};

const ContinuationsWithBlockInfo$json = const {
  '1': 'ContinuationsWithBlockInfo',
  '2': const [
    const {'1': 'postBlockContinuations', '3': 1, '4': 3, '5': 11, '6': '.casper.WaitingContinuationInfo', '10': 'postBlockContinuations'},
    const {'1': 'block', '3': 2, '4': 1, '5': 11, '6': '.casper.LightBlockInfo', '10': 'block'},
  ],
};

const WaitingContinuationInfo$json = const {
  '1': 'WaitingContinuationInfo',
  '2': const [
    const {'1': 'postBlockPatterns', '3': 1, '4': 3, '5': 11, '6': '.BindPattern', '10': 'postBlockPatterns'},
    const {'1': 'postBlockContinuation', '3': 2, '4': 1, '5': 11, '6': '.Par', '10': 'postBlockContinuation'},
  ],
};

