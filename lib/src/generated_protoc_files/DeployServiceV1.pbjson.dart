///
//  Generated code. Do not modify.
//  source: DeployServiceV1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const DeployResponse$json = const {
  '1': 'DeployResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'result', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'result'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const BlockResponse$json = const {
  '1': 'BlockResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'blockInfo', '3': 2, '4': 1, '5': 11, '6': '.casper.BlockInfo', '9': 0, '10': 'blockInfo'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const VisualizeBlocksResponse$json = const {
  '1': 'VisualizeBlocksResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'content'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const MachineVerifyResponse$json = const {
  '1': 'MachineVerifyResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'content'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const BlockInfoResponse$json = const {
  '1': 'BlockInfoResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'blockInfo', '3': 2, '4': 1, '5': 11, '6': '.casper.LightBlockInfo', '9': 0, '10': 'blockInfo'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const ListeningNameDataResponse$json = const {
  '1': 'ListeningNameDataResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 11, '6': '.casper.v1.ListeningNameDataPayload', '9': 0, '10': 'payload'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const ListeningNameDataPayload$json = const {
  '1': 'ListeningNameDataPayload',
  '2': const [
    const {'1': 'blockInfo', '3': 1, '4': 3, '5': 11, '6': '.casper.DataWithBlockInfo', '10': 'blockInfo'},
    const {'1': 'length', '3': 2, '4': 1, '5': 5, '10': 'length'},
  ],
};

const ContinuationAtNameResponse$json = const {
  '1': 'ContinuationAtNameResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 11, '6': '.casper.v1.ContinuationAtNamePayload', '9': 0, '10': 'payload'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const ContinuationAtNamePayload$json = const {
  '1': 'ContinuationAtNamePayload',
  '2': const [
    const {'1': 'blockResults', '3': 1, '4': 3, '5': 11, '6': '.casper.ContinuationsWithBlockInfo', '10': 'blockResults'},
    const {'1': 'length', '3': 2, '4': 1, '5': 5, '10': 'length'},
  ],
};

const FindDeployResponse$json = const {
  '1': 'FindDeployResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'blockInfo', '3': 2, '4': 1, '5': 11, '6': '.casper.LightBlockInfo', '9': 0, '10': 'blockInfo'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const PrivateNamePreviewResponse$json = const {
  '1': 'PrivateNamePreviewResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 11, '6': '.casper.v1.PrivateNamePreviewPayload', '9': 0, '10': 'payload'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const PrivateNamePreviewPayload$json = const {
  '1': 'PrivateNamePreviewPayload',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 12, '10': 'ids'},
  ],
};

const LastFinalizedBlockResponse$json = const {
  '1': 'LastFinalizedBlockResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'blockInfo', '3': 2, '4': 1, '5': 11, '6': '.casper.BlockInfo', '9': 0, '10': 'blockInfo'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const IsFinalizedResponse$json = const {
  '1': 'IsFinalizedResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'isFinalized', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'isFinalized'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const BondStatusResponse$json = const {
  '1': 'BondStatusResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.ServiceError', '9': 0, '10': 'error'},
    const {'1': 'isBonded', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'isBonded'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

