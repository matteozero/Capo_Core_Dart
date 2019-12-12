///
//  Generated code. Do not modify.
//  source: CasperMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const HasBlockRequestProto$json = const {
  '1': 'HasBlockRequestProto',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': const {},
};

const HasBlockProto$json = const {
  '1': 'HasBlockProto',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': const {},
};

const BlockRequestProto$json = const {
  '1': 'BlockRequestProto',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': const {},
};

const ForkChoiceTipRequestProto$json = const {
  '1': 'ForkChoiceTipRequestProto',
  '7': const {},
};

const ApprovedBlockCandidateProto$json = const {
  '1': 'ApprovedBlockCandidateProto',
  '2': const [
    const {'1': 'block', '3': 1, '4': 1, '5': 11, '6': '.casper.BlockMessageProto', '10': 'block'},
    const {'1': 'requiredSigs', '3': 2, '4': 1, '5': 5, '10': 'requiredSigs'},
  ],
  '7': const {},
};

const UnapprovedBlockProto$json = const {
  '1': 'UnapprovedBlockProto',
  '2': const [
    const {'1': 'candidate', '3': 1, '4': 1, '5': 11, '6': '.casper.ApprovedBlockCandidateProto', '10': 'candidate'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'duration', '3': 3, '4': 1, '5': 3, '10': 'duration'},
  ],
  '7': const {},
};

const Signature$json = const {
  '1': 'Signature',
  '2': const [
    const {'1': 'publicKey', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
    const {'1': 'algorithm', '3': 2, '4': 1, '5': 9, '10': 'algorithm'},
    const {'1': 'sig', '3': 3, '4': 1, '5': 12, '10': 'sig'},
  ],
};

const BlockApprovalProto$json = const {
  '1': 'BlockApprovalProto',
  '2': const [
    const {'1': 'candidate', '3': 1, '4': 1, '5': 11, '6': '.casper.ApprovedBlockCandidateProto', '10': 'candidate'},
    const {'1': 'sig', '3': 2, '4': 1, '5': 11, '6': '.casper.Signature', '10': 'sig'},
  ],
  '7': const {},
};

const ApprovedBlockProto$json = const {
  '1': 'ApprovedBlockProto',
  '2': const [
    const {'1': 'candidate', '3': 1, '4': 1, '5': 11, '6': '.casper.ApprovedBlockCandidateProto', '10': 'candidate'},
    const {'1': 'sigs', '3': 2, '4': 3, '5': 11, '6': '.casper.Signature', '10': 'sigs'},
  ],
  '7': const {},
};

const ApprovedBlockRequestProto$json = const {
  '1': 'ApprovedBlockRequestProto',
  '2': const [
    const {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
  ],
  '7': const {},
};

const NoApprovedBlockAvailableProto$json = const {
  '1': 'NoApprovedBlockAvailableProto',
  '2': const [
    const {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'nodeIdentifer', '3': 2, '4': 1, '5': 9, '10': 'nodeIdentifer'},
  ],
  '7': const {},
};

const BlockMessageProto$json = const {
  '1': 'BlockMessageProto',
  '2': const [
    const {'1': 'blockHash', '3': 1, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'header', '3': 2, '4': 1, '5': 11, '6': '.casper.HeaderProto', '10': 'header'},
    const {'1': 'body', '3': 3, '4': 1, '5': 11, '6': '.casper.BodyProto', '10': 'body'},
    const {'1': 'justifications', '3': 4, '4': 3, '5': 11, '6': '.casper.JustificationProto', '10': 'justifications'},
    const {'1': 'sender', '3': 5, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'seqNum', '3': 6, '4': 1, '5': 5, '10': 'seqNum'},
    const {'1': 'sig', '3': 7, '4': 1, '5': 12, '10': 'sig'},
    const {'1': 'sigAlgorithm', '3': 8, '4': 1, '5': 9, '10': 'sigAlgorithm'},
    const {'1': 'shardId', '3': 9, '4': 1, '5': 9, '10': 'shardId'},
    const {'1': 'extraBytes', '3': 10, '4': 1, '5': 12, '10': 'extraBytes'},
  ],
  '7': const {},
};

const BlockHashMessageProto$json = const {
  '1': 'BlockHashMessageProto',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': const {},
};

const BlockMetadataInternal$json = const {
  '1': 'BlockMetadataInternal',
  '2': const [
    const {'1': 'blockHash', '3': 1, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'parents', '3': 2, '4': 3, '5': 12, '8': const {}, '10': 'parents'},
    const {'1': 'sender', '3': 3, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'justifications', '3': 4, '4': 3, '5': 11, '6': '.casper.JustificationProto', '8': const {}, '10': 'justifications'},
    const {'1': 'bonds', '3': 5, '4': 3, '5': 11, '6': '.casper.BondProto', '8': const {}, '10': 'bonds'},
    const {'1': 'blockNum', '3': 6, '4': 1, '5': 3, '10': 'blockNum'},
    const {'1': 'seqNum', '3': 7, '4': 1, '5': 5, '10': 'seqNum'},
    const {'1': 'invalid', '3': 8, '4': 1, '5': 8, '10': 'invalid'},
  ],
  '7': const {},
};

const HeaderProto$json = const {
  '1': 'HeaderProto',
  '2': const [
    const {'1': 'parentsHashList', '3': 1, '4': 3, '5': 12, '10': 'parentsHashList'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'version', '3': 6, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'extraBytes', '3': 7, '4': 1, '5': 12, '10': 'extraBytes'},
  ],
};

const DeployDataProto$json = const {
  '1': 'DeployDataProto',
  '2': const [
    const {'1': 'deployer', '3': 1, '4': 1, '5': 12, '10': 'deployer'},
    const {'1': 'term', '3': 2, '4': 1, '5': 9, '10': 'term'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'sig', '3': 4, '4': 1, '5': 12, '10': 'sig'},
    const {'1': 'sigAlgorithm', '3': 5, '4': 1, '5': 9, '10': 'sigAlgorithm'},
    const {'1': 'phloPrice', '3': 7, '4': 1, '5': 3, '10': 'phloPrice'},
    const {'1': 'phloLimit', '3': 8, '4': 1, '5': 3, '10': 'phloLimit'},
    const {'1': 'validAfterBlockNumber', '3': 10, '4': 1, '5': 3, '10': 'validAfterBlockNumber'},
  ],
};

const ProcessedDeployProto$json = const {
  '1': 'ProcessedDeployProto',
  '2': const [
    const {'1': 'deploy', '3': 1, '4': 1, '5': 11, '6': '.casper.DeployDataProto', '10': 'deploy'},
    const {'1': 'cost', '3': 2, '4': 1, '5': 11, '6': '.PCost', '10': 'cost'},
    const {'1': 'deployLog', '3': 3, '4': 3, '5': 11, '6': '.casper.EventProto', '10': 'deployLog'},
    const {'1': 'paymentLog', '3': 4, '4': 3, '5': 11, '6': '.casper.EventProto', '10': 'paymentLog'},
    const {'1': 'errored', '3': 5, '4': 1, '5': 8, '10': 'errored'},
  ],
};

const ProcessedSystemDeployProto$json = const {
  '1': 'ProcessedSystemDeployProto',
  '2': const [
    const {'1': 'deployLog', '3': 1, '4': 3, '5': 11, '6': '.casper.EventProto', '10': 'deployLog'},
    const {'1': 'errorMsg', '3': 2, '4': 1, '5': 9, '10': 'errorMsg'},
  ],
};

const BodyProto$json = const {
  '1': 'BodyProto',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 11, '6': '.casper.RChainStateProto', '10': 'state'},
    const {'1': 'deploys', '3': 2, '4': 3, '5': 11, '6': '.casper.ProcessedDeployProto', '10': 'deploys'},
    const {'1': 'extraBytes', '3': 3, '4': 1, '5': 12, '10': 'extraBytes'},
  ],
};

const JustificationProto$json = const {
  '1': 'JustificationProto',
  '2': const [
    const {'1': 'validator', '3': 1, '4': 1, '5': 12, '10': 'validator'},
    const {'1': 'latestBlockHash', '3': 2, '4': 1, '5': 12, '10': 'latestBlockHash'},
  ],
};

const RChainStateProto$json = const {
  '1': 'RChainStateProto',
  '2': const [
    const {'1': 'preStateHash', '3': 1, '4': 1, '5': 12, '10': 'preStateHash'},
    const {'1': 'postStateHash', '3': 2, '4': 1, '5': 12, '10': 'postStateHash'},
    const {'1': 'bonds', '3': 3, '4': 3, '5': 11, '6': '.casper.BondProto', '10': 'bonds'},
    const {'1': 'blockNumber', '3': 4, '4': 1, '5': 3, '10': 'blockNumber'},
  ],
};

const EventProto$json = const {
  '1': 'EventProto',
  '2': const [
    const {'1': 'produce', '3': 1, '4': 1, '5': 11, '6': '.casper.ProduceEventProto', '9': 0, '10': 'produce'},
    const {'1': 'consume', '3': 2, '4': 1, '5': 11, '6': '.casper.ConsumeEventProto', '9': 0, '10': 'consume'},
    const {'1': 'comm', '3': 3, '4': 1, '5': 11, '6': '.casper.CommEventProto', '9': 0, '10': 'comm'},
  ],
  '8': const [
    const {'1': 'event_instance'},
  ],
};

const ProduceEventProto$json = const {
  '1': 'ProduceEventProto',
  '2': const [
    const {'1': 'channelsHash', '3': 1, '4': 1, '5': 12, '10': 'channelsHash'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'persistent', '3': 3, '4': 1, '5': 8, '10': 'persistent'},
    const {'1': 'timesRepeated', '3': 4, '4': 1, '5': 5, '10': 'timesRepeated'},
  ],
};

const ConsumeEventProto$json = const {
  '1': 'ConsumeEventProto',
  '2': const [
    const {'1': 'channelsHashes', '3': 1, '4': 3, '5': 12, '10': 'channelsHashes'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'persistent', '3': 3, '4': 1, '5': 8, '10': 'persistent'},
  ],
};

const CommEventProto$json = const {
  '1': 'CommEventProto',
  '2': const [
    const {'1': 'consume', '3': 1, '4': 1, '5': 11, '6': '.casper.ConsumeEventProto', '10': 'consume'},
    const {'1': 'produces', '3': 2, '4': 3, '5': 11, '6': '.casper.ProduceEventProto', '10': 'produces'},
    const {'1': 'peeks', '3': 3, '4': 3, '5': 11, '6': '.casper.PeekProto', '10': 'peeks'},
  ],
};

const PeekProto$json = const {
  '1': 'PeekProto',
  '2': const [
    const {'1': 'channelIndex', '3': 1, '4': 1, '5': 5, '10': 'channelIndex'},
  ],
};

const BondProto$json = const {
  '1': 'BondProto',
  '2': const [
    const {'1': 'validator', '3': 1, '4': 1, '5': 12, '10': 'validator'},
    const {'1': 'stake', '3': 2, '4': 1, '5': 3, '10': 'stake'},
  ],
};

