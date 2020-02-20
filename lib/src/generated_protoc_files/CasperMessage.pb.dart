///
//  Generated code. Do not modify.
//  source: CasperMessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'RhoTypes.pb.dart' as $0;

class HasBlockRequestProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HasBlockRequestProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  HasBlockRequestProto._() : super();
  factory HasBlockRequestProto() => create();
  factory HasBlockRequestProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HasBlockRequestProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HasBlockRequestProto clone() => HasBlockRequestProto()..mergeFromMessage(this);
  HasBlockRequestProto copyWith(void Function(HasBlockRequestProto) updates) => super.copyWith((message) => updates(message as HasBlockRequestProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HasBlockRequestProto create() => HasBlockRequestProto._();
  HasBlockRequestProto createEmptyInstance() => create();
  static $pb.PbList<HasBlockRequestProto> createRepeated() => $pb.PbList<HasBlockRequestProto>();
  static HasBlockRequestProto getDefault() => _defaultInstance ??= create()..freeze();
  static HasBlockRequestProto _defaultInstance;

  $core.List<$core.int> get hash => $_getN(0);
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasHash() => $_has(0);
  void clearHash() => clearField(1);
}

class HasBlockProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HasBlockProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  HasBlockProto._() : super();
  factory HasBlockProto() => create();
  factory HasBlockProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HasBlockProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HasBlockProto clone() => HasBlockProto()..mergeFromMessage(this);
  HasBlockProto copyWith(void Function(HasBlockProto) updates) => super.copyWith((message) => updates(message as HasBlockProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HasBlockProto create() => HasBlockProto._();
  HasBlockProto createEmptyInstance() => create();
  static $pb.PbList<HasBlockProto> createRepeated() => $pb.PbList<HasBlockProto>();
  static HasBlockProto getDefault() => _defaultInstance ??= create()..freeze();
  static HasBlockProto _defaultInstance;

  $core.List<$core.int> get hash => $_getN(0);
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasHash() => $_has(0);
  void clearHash() => clearField(1);
}

class BlockRequestProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockRequestProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BlockRequestProto._() : super();
  factory BlockRequestProto() => create();
  factory BlockRequestProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockRequestProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockRequestProto clone() => BlockRequestProto()..mergeFromMessage(this);
  BlockRequestProto copyWith(void Function(BlockRequestProto) updates) => super.copyWith((message) => updates(message as BlockRequestProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockRequestProto create() => BlockRequestProto._();
  BlockRequestProto createEmptyInstance() => create();
  static $pb.PbList<BlockRequestProto> createRepeated() => $pb.PbList<BlockRequestProto>();
  static BlockRequestProto getDefault() => _defaultInstance ??= create()..freeze();
  static BlockRequestProto _defaultInstance;

  $core.List<$core.int> get hash => $_getN(0);
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasHash() => $_has(0);
  void clearHash() => clearField(1);
}

class ForkChoiceTipRequestProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ForkChoiceTipRequestProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ForkChoiceTipRequestProto._() : super();
  factory ForkChoiceTipRequestProto() => create();
  factory ForkChoiceTipRequestProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForkChoiceTipRequestProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ForkChoiceTipRequestProto clone() => ForkChoiceTipRequestProto()..mergeFromMessage(this);
  ForkChoiceTipRequestProto copyWith(void Function(ForkChoiceTipRequestProto) updates) => super.copyWith((message) => updates(message as ForkChoiceTipRequestProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForkChoiceTipRequestProto create() => ForkChoiceTipRequestProto._();
  ForkChoiceTipRequestProto createEmptyInstance() => create();
  static $pb.PbList<ForkChoiceTipRequestProto> createRepeated() => $pb.PbList<ForkChoiceTipRequestProto>();
  static ForkChoiceTipRequestProto getDefault() => _defaultInstance ??= create()..freeze();
  static ForkChoiceTipRequestProto _defaultInstance;
}

class ApprovedBlockCandidateProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApprovedBlockCandidateProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<BlockMessageProto>(1, 'block', $pb.PbFieldType.OM, defaultOrMaker: BlockMessageProto.getDefault, subBuilder: BlockMessageProto.create)
    ..a<$core.int>(2, 'requiredSigs', $pb.PbFieldType.O3, protoName: 'requiredSigs')
    ..hasRequiredFields = false
  ;

  ApprovedBlockCandidateProto._() : super();
  factory ApprovedBlockCandidateProto() => create();
  factory ApprovedBlockCandidateProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApprovedBlockCandidateProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ApprovedBlockCandidateProto clone() => ApprovedBlockCandidateProto()..mergeFromMessage(this);
  ApprovedBlockCandidateProto copyWith(void Function(ApprovedBlockCandidateProto) updates) => super.copyWith((message) => updates(message as ApprovedBlockCandidateProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApprovedBlockCandidateProto create() => ApprovedBlockCandidateProto._();
  ApprovedBlockCandidateProto createEmptyInstance() => create();
  static $pb.PbList<ApprovedBlockCandidateProto> createRepeated() => $pb.PbList<ApprovedBlockCandidateProto>();
  static ApprovedBlockCandidateProto getDefault() => _defaultInstance ??= create()..freeze();
  static ApprovedBlockCandidateProto _defaultInstance;

  BlockMessageProto get block => $_getN(0);
  set block(BlockMessageProto v) { setField(1, v); }
  $core.bool hasBlock() => $_has(0);
  void clearBlock() => clearField(1);

  $core.int get requiredSigs => $_get(1, 0);
  set requiredSigs($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasRequiredSigs() => $_has(1);
  void clearRequiredSigs() => clearField(2);
}

class UnapprovedBlockProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnapprovedBlockProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<ApprovedBlockCandidateProto>(1, 'candidate', $pb.PbFieldType.OM, defaultOrMaker: ApprovedBlockCandidateProto.getDefault, subBuilder: ApprovedBlockCandidateProto.create)
    ..aInt64(2, 'timestamp')
    ..aInt64(3, 'duration')
    ..hasRequiredFields = false
  ;

  UnapprovedBlockProto._() : super();
  factory UnapprovedBlockProto() => create();
  factory UnapprovedBlockProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnapprovedBlockProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UnapprovedBlockProto clone() => UnapprovedBlockProto()..mergeFromMessage(this);
  UnapprovedBlockProto copyWith(void Function(UnapprovedBlockProto) updates) => super.copyWith((message) => updates(message as UnapprovedBlockProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnapprovedBlockProto create() => UnapprovedBlockProto._();
  UnapprovedBlockProto createEmptyInstance() => create();
  static $pb.PbList<UnapprovedBlockProto> createRepeated() => $pb.PbList<UnapprovedBlockProto>();
  static UnapprovedBlockProto getDefault() => _defaultInstance ??= create()..freeze();
  static UnapprovedBlockProto _defaultInstance;

  ApprovedBlockCandidateProto get candidate => $_getN(0);
  set candidate(ApprovedBlockCandidateProto v) { setField(1, v); }
  $core.bool hasCandidate() => $_has(0);
  void clearCandidate() => clearField(1);

  Int64 get timestamp => $_getI64(1);
  set timestamp(Int64 v) { $_setInt64(1, v); }
  $core.bool hasTimestamp() => $_has(1);
  void clearTimestamp() => clearField(2);

  Int64 get duration => $_getI64(2);
  set duration(Int64 v) { $_setInt64(2, v); }
  $core.bool hasDuration() => $_has(2);
  void clearDuration() => clearField(3);
}

class Signature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Signature', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..aOS(2, 'algorithm')
    ..a<$core.List<$core.int>>(3, 'sig', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Signature._() : super();
  factory Signature() => create();
  factory Signature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Signature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Signature clone() => Signature()..mergeFromMessage(this);
  Signature copyWith(void Function(Signature) updates) => super.copyWith((message) => updates(message as Signature));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Signature create() => Signature._();
  Signature createEmptyInstance() => create();
  static $pb.PbList<Signature> createRepeated() => $pb.PbList<Signature>();
  static Signature getDefault() => _defaultInstance ??= create()..freeze();
  static Signature _defaultInstance;

  $core.List<$core.int> get publicKey => $_getN(0);
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPublicKey() => $_has(0);
  void clearPublicKey() => clearField(1);

  $core.String get algorithm => $_getS(1, '');
  set algorithm($core.String v) { $_setString(1, v); }
  $core.bool hasAlgorithm() => $_has(1);
  void clearAlgorithm() => clearField(2);

  $core.List<$core.int> get sig => $_getN(2);
  set sig($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasSig() => $_has(2);
  void clearSig() => clearField(3);
}

class BlockApprovalProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockApprovalProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<ApprovedBlockCandidateProto>(1, 'candidate', $pb.PbFieldType.OM, defaultOrMaker: ApprovedBlockCandidateProto.getDefault, subBuilder: ApprovedBlockCandidateProto.create)
    ..a<Signature>(2, 'sig', $pb.PbFieldType.OM, defaultOrMaker: Signature.getDefault, subBuilder: Signature.create)
    ..hasRequiredFields = false
  ;

  BlockApprovalProto._() : super();
  factory BlockApprovalProto() => create();
  factory BlockApprovalProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockApprovalProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockApprovalProto clone() => BlockApprovalProto()..mergeFromMessage(this);
  BlockApprovalProto copyWith(void Function(BlockApprovalProto) updates) => super.copyWith((message) => updates(message as BlockApprovalProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockApprovalProto create() => BlockApprovalProto._();
  BlockApprovalProto createEmptyInstance() => create();
  static $pb.PbList<BlockApprovalProto> createRepeated() => $pb.PbList<BlockApprovalProto>();
  static BlockApprovalProto getDefault() => _defaultInstance ??= create()..freeze();
  static BlockApprovalProto _defaultInstance;

  ApprovedBlockCandidateProto get candidate => $_getN(0);
  set candidate(ApprovedBlockCandidateProto v) { setField(1, v); }
  $core.bool hasCandidate() => $_has(0);
  void clearCandidate() => clearField(1);

  Signature get sig => $_getN(1);
  set sig(Signature v) { setField(2, v); }
  $core.bool hasSig() => $_has(1);
  void clearSig() => clearField(2);
}

class ApprovedBlockProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApprovedBlockProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<ApprovedBlockCandidateProto>(1, 'candidate', $pb.PbFieldType.OM, defaultOrMaker: ApprovedBlockCandidateProto.getDefault, subBuilder: ApprovedBlockCandidateProto.create)
    ..pc<Signature>(2, 'sigs', $pb.PbFieldType.PM, subBuilder: Signature.create)
    ..hasRequiredFields = false
  ;

  ApprovedBlockProto._() : super();
  factory ApprovedBlockProto() => create();
  factory ApprovedBlockProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApprovedBlockProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ApprovedBlockProto clone() => ApprovedBlockProto()..mergeFromMessage(this);
  ApprovedBlockProto copyWith(void Function(ApprovedBlockProto) updates) => super.copyWith((message) => updates(message as ApprovedBlockProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApprovedBlockProto create() => ApprovedBlockProto._();
  ApprovedBlockProto createEmptyInstance() => create();
  static $pb.PbList<ApprovedBlockProto> createRepeated() => $pb.PbList<ApprovedBlockProto>();
  static ApprovedBlockProto getDefault() => _defaultInstance ??= create()..freeze();
  static ApprovedBlockProto _defaultInstance;

  ApprovedBlockCandidateProto get candidate => $_getN(0);
  set candidate(ApprovedBlockCandidateProto v) { setField(1, v); }
  $core.bool hasCandidate() => $_has(0);
  void clearCandidate() => clearField(1);

  $core.List<Signature> get sigs => $_getList(1);
}

class ApprovedBlockRequestProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ApprovedBlockRequestProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'identifier')
    ..hasRequiredFields = false
  ;

  ApprovedBlockRequestProto._() : super();
  factory ApprovedBlockRequestProto() => create();
  factory ApprovedBlockRequestProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApprovedBlockRequestProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ApprovedBlockRequestProto clone() => ApprovedBlockRequestProto()..mergeFromMessage(this);
  ApprovedBlockRequestProto copyWith(void Function(ApprovedBlockRequestProto) updates) => super.copyWith((message) => updates(message as ApprovedBlockRequestProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApprovedBlockRequestProto create() => ApprovedBlockRequestProto._();
  ApprovedBlockRequestProto createEmptyInstance() => create();
  static $pb.PbList<ApprovedBlockRequestProto> createRepeated() => $pb.PbList<ApprovedBlockRequestProto>();
  static ApprovedBlockRequestProto getDefault() => _defaultInstance ??= create()..freeze();
  static ApprovedBlockRequestProto _defaultInstance;

  $core.String get identifier => $_getS(0, '');
  set identifier($core.String v) { $_setString(0, v); }
  $core.bool hasIdentifier() => $_has(0);
  void clearIdentifier() => clearField(1);
}

class NoApprovedBlockAvailableProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NoApprovedBlockAvailableProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'identifier')
    ..aOS(2, 'nodeIdentifer', protoName: 'nodeIdentifer')
    ..hasRequiredFields = false
  ;

  NoApprovedBlockAvailableProto._() : super();
  factory NoApprovedBlockAvailableProto() => create();
  factory NoApprovedBlockAvailableProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoApprovedBlockAvailableProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NoApprovedBlockAvailableProto clone() => NoApprovedBlockAvailableProto()..mergeFromMessage(this);
  NoApprovedBlockAvailableProto copyWith(void Function(NoApprovedBlockAvailableProto) updates) => super.copyWith((message) => updates(message as NoApprovedBlockAvailableProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoApprovedBlockAvailableProto create() => NoApprovedBlockAvailableProto._();
  NoApprovedBlockAvailableProto createEmptyInstance() => create();
  static $pb.PbList<NoApprovedBlockAvailableProto> createRepeated() => $pb.PbList<NoApprovedBlockAvailableProto>();
  static NoApprovedBlockAvailableProto getDefault() => _defaultInstance ??= create()..freeze();
  static NoApprovedBlockAvailableProto _defaultInstance;

  $core.String get identifier => $_getS(0, '');
  set identifier($core.String v) { $_setString(0, v); }
  $core.bool hasIdentifier() => $_has(0);
  void clearIdentifier() => clearField(1);

  $core.String get nodeIdentifer => $_getS(1, '');
  set nodeIdentifer($core.String v) { $_setString(1, v); }
  $core.bool hasNodeIdentifer() => $_has(1);
  void clearNodeIdentifer() => clearField(2);
}

class BlockMessageProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockMessageProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'blockHash', $pb.PbFieldType.OY, protoName: 'blockHash')
    ..a<HeaderProto>(2, 'header', $pb.PbFieldType.OM, defaultOrMaker: HeaderProto.getDefault, subBuilder: HeaderProto.create)
    ..a<BodyProto>(3, 'body', $pb.PbFieldType.OM, defaultOrMaker: BodyProto.getDefault, subBuilder: BodyProto.create)
    ..pc<JustificationProto>(4, 'justifications', $pb.PbFieldType.PM, subBuilder: JustificationProto.create)
    ..a<$core.List<$core.int>>(5, 'sender', $pb.PbFieldType.OY)
    ..a<$core.int>(6, 'seqNum', $pb.PbFieldType.O3, protoName: 'seqNum')
    ..a<$core.List<$core.int>>(7, 'sig', $pb.PbFieldType.OY)
    ..aOS(8, 'sigAlgorithm', protoName: 'sigAlgorithm')
    ..aOS(9, 'shardId', protoName: 'shardId')
    ..a<$core.List<$core.int>>(10, 'extraBytes', $pb.PbFieldType.OY, protoName: 'extraBytes')
    ..hasRequiredFields = false
  ;

  BlockMessageProto._() : super();
  factory BlockMessageProto() => create();
  factory BlockMessageProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockMessageProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockMessageProto clone() => BlockMessageProto()..mergeFromMessage(this);
  BlockMessageProto copyWith(void Function(BlockMessageProto) updates) => super.copyWith((message) => updates(message as BlockMessageProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockMessageProto create() => BlockMessageProto._();
  BlockMessageProto createEmptyInstance() => create();
  static $pb.PbList<BlockMessageProto> createRepeated() => $pb.PbList<BlockMessageProto>();
  static BlockMessageProto getDefault() => _defaultInstance ??= create()..freeze();
  static BlockMessageProto _defaultInstance;

  $core.List<$core.int> get blockHash => $_getN(0);
  set blockHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasBlockHash() => $_has(0);
  void clearBlockHash() => clearField(1);

  HeaderProto get header => $_getN(1);
  set header(HeaderProto v) { setField(2, v); }
  $core.bool hasHeader() => $_has(1);
  void clearHeader() => clearField(2);

  BodyProto get body => $_getN(2);
  set body(BodyProto v) { setField(3, v); }
  $core.bool hasBody() => $_has(2);
  void clearBody() => clearField(3);

  $core.List<JustificationProto> get justifications => $_getList(3);

  $core.List<$core.int> get sender => $_getN(4);
  set sender($core.List<$core.int> v) { $_setBytes(4, v); }
  $core.bool hasSender() => $_has(4);
  void clearSender() => clearField(5);

  $core.int get seqNum => $_get(5, 0);
  set seqNum($core.int v) { $_setSignedInt32(5, v); }
  $core.bool hasSeqNum() => $_has(5);
  void clearSeqNum() => clearField(6);

  $core.List<$core.int> get sig => $_getN(6);
  set sig($core.List<$core.int> v) { $_setBytes(6, v); }
  $core.bool hasSig() => $_has(6);
  void clearSig() => clearField(7);

  $core.String get sigAlgorithm => $_getS(7, '');
  set sigAlgorithm($core.String v) { $_setString(7, v); }
  $core.bool hasSigAlgorithm() => $_has(7);
  void clearSigAlgorithm() => clearField(8);

  $core.String get shardId => $_getS(8, '');
  set shardId($core.String v) { $_setString(8, v); }
  $core.bool hasShardId() => $_has(8);
  void clearShardId() => clearField(9);

  $core.List<$core.int> get extraBytes => $_getN(9);
  set extraBytes($core.List<$core.int> v) { $_setBytes(9, v); }
  $core.bool hasExtraBytes() => $_has(9);
  void clearExtraBytes() => clearField(10);
}

class BlockHashMessageProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockHashMessageProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'hash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'blockCreator', $pb.PbFieldType.OY, protoName: 'blockCreator')
    ..hasRequiredFields = false
  ;

  BlockHashMessageProto._() : super();
  factory BlockHashMessageProto() => create();
  factory BlockHashMessageProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockHashMessageProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockHashMessageProto clone() => BlockHashMessageProto()..mergeFromMessage(this);
  BlockHashMessageProto copyWith(void Function(BlockHashMessageProto) updates) => super.copyWith((message) => updates(message as BlockHashMessageProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHashMessageProto create() => BlockHashMessageProto._();
  BlockHashMessageProto createEmptyInstance() => create();
  static $pb.PbList<BlockHashMessageProto> createRepeated() => $pb.PbList<BlockHashMessageProto>();
  static BlockHashMessageProto getDefault() => _defaultInstance ??= create()..freeze();
  static BlockHashMessageProto _defaultInstance;

  $core.List<$core.int> get hash => $_getN(0);
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasHash() => $_has(0);
  void clearHash() => clearField(1);

  $core.List<$core.int> get blockCreator => $_getN(1);
  set blockCreator($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasBlockCreator() => $_has(1);
  void clearBlockCreator() => clearField(2);
}

class BlockMetadataInternal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockMetadataInternal', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'blockHash', $pb.PbFieldType.OY, protoName: 'blockHash')
    ..p<$core.List<$core.int>>(2, 'parents', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(3, 'sender', $pb.PbFieldType.OY)
    ..pc<JustificationProto>(4, 'justifications', $pb.PbFieldType.PM, subBuilder: JustificationProto.create)
    ..pc<BondProto>(5, 'bonds', $pb.PbFieldType.PM, subBuilder: BondProto.create)
    ..aInt64(6, 'blockNum', protoName: 'blockNum')
    ..a<$core.int>(7, 'seqNum', $pb.PbFieldType.O3, protoName: 'seqNum')
    ..aOB(8, 'invalid')
    ..hasRequiredFields = false
  ;

  BlockMetadataInternal._() : super();
  factory BlockMetadataInternal() => create();
  factory BlockMetadataInternal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockMetadataInternal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockMetadataInternal clone() => BlockMetadataInternal()..mergeFromMessage(this);
  BlockMetadataInternal copyWith(void Function(BlockMetadataInternal) updates) => super.copyWith((message) => updates(message as BlockMetadataInternal));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockMetadataInternal create() => BlockMetadataInternal._();
  BlockMetadataInternal createEmptyInstance() => create();
  static $pb.PbList<BlockMetadataInternal> createRepeated() => $pb.PbList<BlockMetadataInternal>();
  static BlockMetadataInternal getDefault() => _defaultInstance ??= create()..freeze();
  static BlockMetadataInternal _defaultInstance;

  $core.List<$core.int> get blockHash => $_getN(0);
  set blockHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasBlockHash() => $_has(0);
  void clearBlockHash() => clearField(1);

  $core.List<$core.List<$core.int>> get parents => $_getList(1);

  $core.List<$core.int> get sender => $_getN(2);
  set sender($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasSender() => $_has(2);
  void clearSender() => clearField(3);

  $core.List<JustificationProto> get justifications => $_getList(3);

  $core.List<BondProto> get bonds => $_getList(4);

  Int64 get blockNum => $_getI64(5);
  set blockNum(Int64 v) { $_setInt64(5, v); }
  $core.bool hasBlockNum() => $_has(5);
  void clearBlockNum() => clearField(6);

  $core.int get seqNum => $_get(6, 0);
  set seqNum($core.int v) { $_setSignedInt32(6, v); }
  $core.bool hasSeqNum() => $_has(6);
  void clearSeqNum() => clearField(7);

  $core.bool get invalid => $_get(7, false);
  set invalid($core.bool v) { $_setBool(7, v); }
  $core.bool hasInvalid() => $_has(7);
  void clearInvalid() => clearField(8);
}

class HeaderProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HeaderProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'parentsHashList', $pb.PbFieldType.PY, protoName: 'parentsHashList')
    ..aInt64(5, 'timestamp')
    ..aInt64(6, 'version')
    ..a<$core.List<$core.int>>(7, 'extraBytes', $pb.PbFieldType.OY, protoName: 'extraBytes')
    ..hasRequiredFields = false
  ;

  HeaderProto._() : super();
  factory HeaderProto() => create();
  factory HeaderProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HeaderProto clone() => HeaderProto()..mergeFromMessage(this);
  HeaderProto copyWith(void Function(HeaderProto) updates) => super.copyWith((message) => updates(message as HeaderProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeaderProto create() => HeaderProto._();
  HeaderProto createEmptyInstance() => create();
  static $pb.PbList<HeaderProto> createRepeated() => $pb.PbList<HeaderProto>();
  static HeaderProto getDefault() => _defaultInstance ??= create()..freeze();
  static HeaderProto _defaultInstance;

  $core.List<$core.List<$core.int>> get parentsHashList => $_getList(0);

  Int64 get timestamp => $_getI64(1);
  set timestamp(Int64 v) { $_setInt64(1, v); }
  $core.bool hasTimestamp() => $_has(1);
  void clearTimestamp() => clearField(5);

  Int64 get version => $_getI64(2);
  set version(Int64 v) { $_setInt64(2, v); }
  $core.bool hasVersion() => $_has(2);
  void clearVersion() => clearField(6);

  $core.List<$core.int> get extraBytes => $_getN(3);
  set extraBytes($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasExtraBytes() => $_has(3);
  void clearExtraBytes() => clearField(7);
}

class DeployDataProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeployDataProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'deployer', $pb.PbFieldType.OY)
    ..aOS(2, 'term')
    ..aInt64(3, 'timestamp')
    ..a<$core.List<$core.int>>(4, 'sig', $pb.PbFieldType.OY)
    ..aOS(5, 'sigAlgorithm', protoName: 'sigAlgorithm')
    ..aInt64(7, 'phloPrice', protoName: 'phloPrice')
    ..aInt64(8, 'phloLimit', protoName: 'phloLimit')
    ..aInt64(10, 'validAfterBlockNumber', protoName: 'validAfterBlockNumber')
    ..hasRequiredFields = false
  ;

  DeployDataProto._() : super();
  factory DeployDataProto() => create();
  factory DeployDataProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployDataProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeployDataProto clone() => DeployDataProto()..mergeFromMessage(this);
  DeployDataProto copyWith(void Function(DeployDataProto) updates) => super.copyWith((message) => updates(message as DeployDataProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployDataProto create() => DeployDataProto._();
  DeployDataProto createEmptyInstance() => create();
  static $pb.PbList<DeployDataProto> createRepeated() => $pb.PbList<DeployDataProto>();
  static DeployDataProto getDefault() => _defaultInstance ??= create()..freeze();
  static DeployDataProto _defaultInstance;

  $core.List<$core.int> get deployer => $_getN(0);
  set deployer($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasDeployer() => $_has(0);
  void clearDeployer() => clearField(1);

  $core.String get term => $_getS(1, '');
  set term($core.String v) { $_setString(1, v); }
  $core.bool hasTerm() => $_has(1);
  void clearTerm() => clearField(2);

  Int64 get timestamp => $_getI64(2);
  set timestamp(Int64 v) { $_setInt64(2, v); }
  $core.bool hasTimestamp() => $_has(2);
  void clearTimestamp() => clearField(3);

  $core.List<$core.int> get sig => $_getN(3);
  set sig($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasSig() => $_has(3);
  void clearSig() => clearField(4);

  $core.String get sigAlgorithm => $_getS(4, '');
  set sigAlgorithm($core.String v) { $_setString(4, v); }
  $core.bool hasSigAlgorithm() => $_has(4);
  void clearSigAlgorithm() => clearField(5);

  Int64 get phloPrice => $_getI64(5);
  set phloPrice(Int64 v) { $_setInt64(5, v); }
  $core.bool hasPhloPrice() => $_has(5);
  void clearPhloPrice() => clearField(7);

  Int64 get phloLimit => $_getI64(6);
  set phloLimit(Int64 v) { $_setInt64(6, v); }
  $core.bool hasPhloLimit() => $_has(6);
  void clearPhloLimit() => clearField(8);

  Int64 get validAfterBlockNumber => $_getI64(7);
  set validAfterBlockNumber(Int64 v) { $_setInt64(7, v); }
  $core.bool hasValidAfterBlockNumber() => $_has(7);
  void clearValidAfterBlockNumber() => clearField(10);
}

class ProcessedDeployProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProcessedDeployProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<DeployDataProto>(1, 'deploy', $pb.PbFieldType.OM, defaultOrMaker: DeployDataProto.getDefault, subBuilder: DeployDataProto.create)
    ..a<$0.PCost>(2, 'cost', $pb.PbFieldType.OM, defaultOrMaker: $0.PCost.getDefault, subBuilder: $0.PCost.create)
    ..pc<EventProto>(3, 'deployLog', $pb.PbFieldType.PM, protoName: 'deployLog', subBuilder: EventProto.create)
    ..aOB(5, 'errored')
    ..aOS(6, 'systemDeployError', protoName: 'systemDeployError')
    ..hasRequiredFields = false
  ;

  ProcessedDeployProto._() : super();
  factory ProcessedDeployProto() => create();
  factory ProcessedDeployProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessedDeployProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProcessedDeployProto clone() => ProcessedDeployProto()..mergeFromMessage(this);
  ProcessedDeployProto copyWith(void Function(ProcessedDeployProto) updates) => super.copyWith((message) => updates(message as ProcessedDeployProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProcessedDeployProto create() => ProcessedDeployProto._();
  ProcessedDeployProto createEmptyInstance() => create();
  static $pb.PbList<ProcessedDeployProto> createRepeated() => $pb.PbList<ProcessedDeployProto>();
  static ProcessedDeployProto getDefault() => _defaultInstance ??= create()..freeze();
  static ProcessedDeployProto _defaultInstance;

  DeployDataProto get deploy => $_getN(0);
  set deploy(DeployDataProto v) { setField(1, v); }
  $core.bool hasDeploy() => $_has(0);
  void clearDeploy() => clearField(1);

  $0.PCost get cost => $_getN(1);
  set cost($0.PCost v) { setField(2, v); }
  $core.bool hasCost() => $_has(1);
  void clearCost() => clearField(2);

  $core.List<EventProto> get deployLog => $_getList(2);

  $core.bool get errored => $_get(3, false);
  set errored($core.bool v) { $_setBool(3, v); }
  $core.bool hasErrored() => $_has(3);
  void clearErrored() => clearField(5);

  $core.String get systemDeployError => $_getS(4, '');
  set systemDeployError($core.String v) { $_setString(4, v); }
  $core.bool hasSystemDeployError() => $_has(4);
  void clearSystemDeployError() => clearField(6);
}

class SlashSystemDeployDataProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SlashSystemDeployDataProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'invalidBlockHash', $pb.PbFieldType.OY, protoName: 'invalidBlockHash')
    ..a<$core.List<$core.int>>(2, 'issuerPublicKey', $pb.PbFieldType.OY, protoName: 'issuerPublicKey')
    ..hasRequiredFields = false
  ;

  SlashSystemDeployDataProto._() : super();
  factory SlashSystemDeployDataProto() => create();
  factory SlashSystemDeployDataProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlashSystemDeployDataProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SlashSystemDeployDataProto clone() => SlashSystemDeployDataProto()..mergeFromMessage(this);
  SlashSystemDeployDataProto copyWith(void Function(SlashSystemDeployDataProto) updates) => super.copyWith((message) => updates(message as SlashSystemDeployDataProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SlashSystemDeployDataProto create() => SlashSystemDeployDataProto._();
  SlashSystemDeployDataProto createEmptyInstance() => create();
  static $pb.PbList<SlashSystemDeployDataProto> createRepeated() => $pb.PbList<SlashSystemDeployDataProto>();
  static SlashSystemDeployDataProto getDefault() => _defaultInstance ??= create()..freeze();
  static SlashSystemDeployDataProto _defaultInstance;

  $core.List<$core.int> get invalidBlockHash => $_getN(0);
  set invalidBlockHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasInvalidBlockHash() => $_has(0);
  void clearInvalidBlockHash() => clearField(1);

  $core.List<$core.int> get issuerPublicKey => $_getN(1);
  set issuerPublicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasIssuerPublicKey() => $_has(1);
  void clearIssuerPublicKey() => clearField(2);
}

class CloseBlockSystemDeployDataProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CloseBlockSystemDeployDataProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CloseBlockSystemDeployDataProto._() : super();
  factory CloseBlockSystemDeployDataProto() => create();
  factory CloseBlockSystemDeployDataProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CloseBlockSystemDeployDataProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CloseBlockSystemDeployDataProto clone() => CloseBlockSystemDeployDataProto()..mergeFromMessage(this);
  CloseBlockSystemDeployDataProto copyWith(void Function(CloseBlockSystemDeployDataProto) updates) => super.copyWith((message) => updates(message as CloseBlockSystemDeployDataProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseBlockSystemDeployDataProto create() => CloseBlockSystemDeployDataProto._();
  CloseBlockSystemDeployDataProto createEmptyInstance() => create();
  static $pb.PbList<CloseBlockSystemDeployDataProto> createRepeated() => $pb.PbList<CloseBlockSystemDeployDataProto>();
  static CloseBlockSystemDeployDataProto getDefault() => _defaultInstance ??= create()..freeze();
  static CloseBlockSystemDeployDataProto _defaultInstance;
}

enum SystemDeployDataProto_SystemDeploy {
  slashSystemDeploy, 
  closeBlockSystemDeploy, 
  notSet
}

class SystemDeployDataProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SystemDeployDataProto_SystemDeploy> _SystemDeployDataProto_SystemDeployByTag = {
    1 : SystemDeployDataProto_SystemDeploy.slashSystemDeploy,
    2 : SystemDeployDataProto_SystemDeploy.closeBlockSystemDeploy,
    0 : SystemDeployDataProto_SystemDeploy.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SystemDeployDataProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<SlashSystemDeployDataProto>(1, 'slashSystemDeploy', $pb.PbFieldType.OM, protoName: 'slashSystemDeploy', defaultOrMaker: SlashSystemDeployDataProto.getDefault, subBuilder: SlashSystemDeployDataProto.create)
    ..a<CloseBlockSystemDeployDataProto>(2, 'closeBlockSystemDeploy', $pb.PbFieldType.OM, protoName: 'closeBlockSystemDeploy', defaultOrMaker: CloseBlockSystemDeployDataProto.getDefault, subBuilder: CloseBlockSystemDeployDataProto.create)
    ..hasRequiredFields = false
  ;

  SystemDeployDataProto._() : super();
  factory SystemDeployDataProto() => create();
  factory SystemDeployDataProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemDeployDataProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SystemDeployDataProto clone() => SystemDeployDataProto()..mergeFromMessage(this);
  SystemDeployDataProto copyWith(void Function(SystemDeployDataProto) updates) => super.copyWith((message) => updates(message as SystemDeployDataProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SystemDeployDataProto create() => SystemDeployDataProto._();
  SystemDeployDataProto createEmptyInstance() => create();
  static $pb.PbList<SystemDeployDataProto> createRepeated() => $pb.PbList<SystemDeployDataProto>();
  static SystemDeployDataProto getDefault() => _defaultInstance ??= create()..freeze();
  static SystemDeployDataProto _defaultInstance;

  SystemDeployDataProto_SystemDeploy whichSystemDeploy() => _SystemDeployDataProto_SystemDeployByTag[$_whichOneof(0)];
  void clearSystemDeploy() => clearField($_whichOneof(0));

  SlashSystemDeployDataProto get slashSystemDeploy => $_getN(0);
  set slashSystemDeploy(SlashSystemDeployDataProto v) { setField(1, v); }
  $core.bool hasSlashSystemDeploy() => $_has(0);
  void clearSlashSystemDeploy() => clearField(1);

  CloseBlockSystemDeployDataProto get closeBlockSystemDeploy => $_getN(1);
  set closeBlockSystemDeploy(CloseBlockSystemDeployDataProto v) { setField(2, v); }
  $core.bool hasCloseBlockSystemDeploy() => $_has(1);
  void clearCloseBlockSystemDeploy() => clearField(2);
}

class ProcessedSystemDeployProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProcessedSystemDeployProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<SystemDeployDataProto>(1, 'systemDeploy', $pb.PbFieldType.OM, protoName: 'systemDeploy', defaultOrMaker: SystemDeployDataProto.getDefault, subBuilder: SystemDeployDataProto.create)
    ..pc<EventProto>(2, 'deployLog', $pb.PbFieldType.PM, protoName: 'deployLog', subBuilder: EventProto.create)
    ..aOS(3, 'errorMsg', protoName: 'errorMsg')
    ..hasRequiredFields = false
  ;

  ProcessedSystemDeployProto._() : super();
  factory ProcessedSystemDeployProto() => create();
  factory ProcessedSystemDeployProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessedSystemDeployProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProcessedSystemDeployProto clone() => ProcessedSystemDeployProto()..mergeFromMessage(this);
  ProcessedSystemDeployProto copyWith(void Function(ProcessedSystemDeployProto) updates) => super.copyWith((message) => updates(message as ProcessedSystemDeployProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProcessedSystemDeployProto create() => ProcessedSystemDeployProto._();
  ProcessedSystemDeployProto createEmptyInstance() => create();
  static $pb.PbList<ProcessedSystemDeployProto> createRepeated() => $pb.PbList<ProcessedSystemDeployProto>();
  static ProcessedSystemDeployProto getDefault() => _defaultInstance ??= create()..freeze();
  static ProcessedSystemDeployProto _defaultInstance;

  SystemDeployDataProto get systemDeploy => $_getN(0);
  set systemDeploy(SystemDeployDataProto v) { setField(1, v); }
  $core.bool hasSystemDeploy() => $_has(0);
  void clearSystemDeploy() => clearField(1);

  $core.List<EventProto> get deployLog => $_getList(1);

  $core.String get errorMsg => $_getS(2, '');
  set errorMsg($core.String v) { $_setString(2, v); }
  $core.bool hasErrorMsg() => $_has(2);
  void clearErrorMsg() => clearField(3);
}

class BodyProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BodyProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<RChainStateProto>(1, 'state', $pb.PbFieldType.OM, defaultOrMaker: RChainStateProto.getDefault, subBuilder: RChainStateProto.create)
    ..pc<ProcessedDeployProto>(2, 'deploys', $pb.PbFieldType.PM, subBuilder: ProcessedDeployProto.create)
    ..pc<ProcessedSystemDeployProto>(3, 'systemDeploys', $pb.PbFieldType.PM, protoName: 'systemDeploys', subBuilder: ProcessedSystemDeployProto.create)
    ..a<$core.List<$core.int>>(4, 'extraBytes', $pb.PbFieldType.OY, protoName: 'extraBytes')
    ..hasRequiredFields = false
  ;

  BodyProto._() : super();
  factory BodyProto() => create();
  factory BodyProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BodyProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BodyProto clone() => BodyProto()..mergeFromMessage(this);
  BodyProto copyWith(void Function(BodyProto) updates) => super.copyWith((message) => updates(message as BodyProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BodyProto create() => BodyProto._();
  BodyProto createEmptyInstance() => create();
  static $pb.PbList<BodyProto> createRepeated() => $pb.PbList<BodyProto>();
  static BodyProto getDefault() => _defaultInstance ??= create()..freeze();
  static BodyProto _defaultInstance;

  RChainStateProto get state => $_getN(0);
  set state(RChainStateProto v) { setField(1, v); }
  $core.bool hasState() => $_has(0);
  void clearState() => clearField(1);

  $core.List<ProcessedDeployProto> get deploys => $_getList(1);

  $core.List<ProcessedSystemDeployProto> get systemDeploys => $_getList(2);

  $core.List<$core.int> get extraBytes => $_getN(3);
  set extraBytes($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasExtraBytes() => $_has(3);
  void clearExtraBytes() => clearField(4);
}

class JustificationProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JustificationProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'validator', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'latestBlockHash', $pb.PbFieldType.OY, protoName: 'latestBlockHash')
    ..hasRequiredFields = false
  ;

  JustificationProto._() : super();
  factory JustificationProto() => create();
  factory JustificationProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JustificationProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JustificationProto clone() => JustificationProto()..mergeFromMessage(this);
  JustificationProto copyWith(void Function(JustificationProto) updates) => super.copyWith((message) => updates(message as JustificationProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JustificationProto create() => JustificationProto._();
  JustificationProto createEmptyInstance() => create();
  static $pb.PbList<JustificationProto> createRepeated() => $pb.PbList<JustificationProto>();
  static JustificationProto getDefault() => _defaultInstance ??= create()..freeze();
  static JustificationProto _defaultInstance;

  $core.List<$core.int> get validator => $_getN(0);
  set validator($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasValidator() => $_has(0);
  void clearValidator() => clearField(1);

  $core.List<$core.int> get latestBlockHash => $_getN(1);
  set latestBlockHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasLatestBlockHash() => $_has(1);
  void clearLatestBlockHash() => clearField(2);
}

class RChainStateProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RChainStateProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'preStateHash', $pb.PbFieldType.OY, protoName: 'preStateHash')
    ..a<$core.List<$core.int>>(2, 'postStateHash', $pb.PbFieldType.OY, protoName: 'postStateHash')
    ..pc<BondProto>(3, 'bonds', $pb.PbFieldType.PM, subBuilder: BondProto.create)
    ..aInt64(4, 'blockNumber', protoName: 'blockNumber')
    ..hasRequiredFields = false
  ;

  RChainStateProto._() : super();
  factory RChainStateProto() => create();
  factory RChainStateProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RChainStateProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RChainStateProto clone() => RChainStateProto()..mergeFromMessage(this);
  RChainStateProto copyWith(void Function(RChainStateProto) updates) => super.copyWith((message) => updates(message as RChainStateProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RChainStateProto create() => RChainStateProto._();
  RChainStateProto createEmptyInstance() => create();
  static $pb.PbList<RChainStateProto> createRepeated() => $pb.PbList<RChainStateProto>();
  static RChainStateProto getDefault() => _defaultInstance ??= create()..freeze();
  static RChainStateProto _defaultInstance;

  $core.List<$core.int> get preStateHash => $_getN(0);
  set preStateHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPreStateHash() => $_has(0);
  void clearPreStateHash() => clearField(1);

  $core.List<$core.int> get postStateHash => $_getN(1);
  set postStateHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasPostStateHash() => $_has(1);
  void clearPostStateHash() => clearField(2);

  $core.List<BondProto> get bonds => $_getList(2);

  Int64 get blockNumber => $_getI64(3);
  set blockNumber(Int64 v) { $_setInt64(3, v); }
  $core.bool hasBlockNumber() => $_has(3);
  void clearBlockNumber() => clearField(4);
}

enum EventProto_EventInstance {
  produce, 
  consume, 
  comm, 
  notSet
}

class EventProto extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, EventProto_EventInstance> _EventProto_EventInstanceByTag = {
    1 : EventProto_EventInstance.produce,
    2 : EventProto_EventInstance.consume,
    3 : EventProto_EventInstance.comm,
    0 : EventProto_EventInstance.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..a<ProduceEventProto>(1, 'produce', $pb.PbFieldType.OM, defaultOrMaker: ProduceEventProto.getDefault, subBuilder: ProduceEventProto.create)
    ..a<ConsumeEventProto>(2, 'consume', $pb.PbFieldType.OM, defaultOrMaker: ConsumeEventProto.getDefault, subBuilder: ConsumeEventProto.create)
    ..a<CommEventProto>(3, 'comm', $pb.PbFieldType.OM, defaultOrMaker: CommEventProto.getDefault, subBuilder: CommEventProto.create)
    ..hasRequiredFields = false
  ;

  EventProto._() : super();
  factory EventProto() => create();
  factory EventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventProto clone() => EventProto()..mergeFromMessage(this);
  EventProto copyWith(void Function(EventProto) updates) => super.copyWith((message) => updates(message as EventProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventProto create() => EventProto._();
  EventProto createEmptyInstance() => create();
  static $pb.PbList<EventProto> createRepeated() => $pb.PbList<EventProto>();
  static EventProto getDefault() => _defaultInstance ??= create()..freeze();
  static EventProto _defaultInstance;

  EventProto_EventInstance whichEventInstance() => _EventProto_EventInstanceByTag[$_whichOneof(0)];
  void clearEventInstance() => clearField($_whichOneof(0));

  ProduceEventProto get produce => $_getN(0);
  set produce(ProduceEventProto v) { setField(1, v); }
  $core.bool hasProduce() => $_has(0);
  void clearProduce() => clearField(1);

  ConsumeEventProto get consume => $_getN(1);
  set consume(ConsumeEventProto v) { setField(2, v); }
  $core.bool hasConsume() => $_has(1);
  void clearConsume() => clearField(2);

  CommEventProto get comm => $_getN(2);
  set comm(CommEventProto v) { setField(3, v); }
  $core.bool hasComm() => $_has(2);
  void clearComm() => clearField(3);
}

class ProduceEventProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProduceEventProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'channelsHash', $pb.PbFieldType.OY, protoName: 'channelsHash')
    ..a<$core.List<$core.int>>(2, 'hash', $pb.PbFieldType.OY)
    ..aOB(3, 'persistent')
    ..a<$core.int>(4, 'timesRepeated', $pb.PbFieldType.O3, protoName: 'timesRepeated')
    ..hasRequiredFields = false
  ;

  ProduceEventProto._() : super();
  factory ProduceEventProto() => create();
  factory ProduceEventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProduceEventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProduceEventProto clone() => ProduceEventProto()..mergeFromMessage(this);
  ProduceEventProto copyWith(void Function(ProduceEventProto) updates) => super.copyWith((message) => updates(message as ProduceEventProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProduceEventProto create() => ProduceEventProto._();
  ProduceEventProto createEmptyInstance() => create();
  static $pb.PbList<ProduceEventProto> createRepeated() => $pb.PbList<ProduceEventProto>();
  static ProduceEventProto getDefault() => _defaultInstance ??= create()..freeze();
  static ProduceEventProto _defaultInstance;

  $core.List<$core.int> get channelsHash => $_getN(0);
  set channelsHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasChannelsHash() => $_has(0);
  void clearChannelsHash() => clearField(1);

  $core.List<$core.int> get hash => $_getN(1);
  set hash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasHash() => $_has(1);
  void clearHash() => clearField(2);

  $core.bool get persistent => $_get(2, false);
  set persistent($core.bool v) { $_setBool(2, v); }
  $core.bool hasPersistent() => $_has(2);
  void clearPersistent() => clearField(3);

  $core.int get timesRepeated => $_get(3, 0);
  set timesRepeated($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasTimesRepeated() => $_has(3);
  void clearTimesRepeated() => clearField(4);
}

class ConsumeEventProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConsumeEventProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'channelsHashes', $pb.PbFieldType.PY, protoName: 'channelsHashes')
    ..a<$core.List<$core.int>>(2, 'hash', $pb.PbFieldType.OY)
    ..aOB(3, 'persistent')
    ..hasRequiredFields = false
  ;

  ConsumeEventProto._() : super();
  factory ConsumeEventProto() => create();
  factory ConsumeEventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConsumeEventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ConsumeEventProto clone() => ConsumeEventProto()..mergeFromMessage(this);
  ConsumeEventProto copyWith(void Function(ConsumeEventProto) updates) => super.copyWith((message) => updates(message as ConsumeEventProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConsumeEventProto create() => ConsumeEventProto._();
  ConsumeEventProto createEmptyInstance() => create();
  static $pb.PbList<ConsumeEventProto> createRepeated() => $pb.PbList<ConsumeEventProto>();
  static ConsumeEventProto getDefault() => _defaultInstance ??= create()..freeze();
  static ConsumeEventProto _defaultInstance;

  $core.List<$core.List<$core.int>> get channelsHashes => $_getList(0);

  $core.List<$core.int> get hash => $_getN(1);
  set hash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasHash() => $_has(1);
  void clearHash() => clearField(2);

  $core.bool get persistent => $_get(2, false);
  set persistent($core.bool v) { $_setBool(2, v); }
  $core.bool hasPersistent() => $_has(2);
  void clearPersistent() => clearField(3);
}

class CommEventProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommEventProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<ConsumeEventProto>(1, 'consume', $pb.PbFieldType.OM, defaultOrMaker: ConsumeEventProto.getDefault, subBuilder: ConsumeEventProto.create)
    ..pc<ProduceEventProto>(2, 'produces', $pb.PbFieldType.PM, subBuilder: ProduceEventProto.create)
    ..pc<PeekProto>(3, 'peeks', $pb.PbFieldType.PM, subBuilder: PeekProto.create)
    ..hasRequiredFields = false
  ;

  CommEventProto._() : super();
  factory CommEventProto() => create();
  factory CommEventProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommEventProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommEventProto clone() => CommEventProto()..mergeFromMessage(this);
  CommEventProto copyWith(void Function(CommEventProto) updates) => super.copyWith((message) => updates(message as CommEventProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommEventProto create() => CommEventProto._();
  CommEventProto createEmptyInstance() => create();
  static $pb.PbList<CommEventProto> createRepeated() => $pb.PbList<CommEventProto>();
  static CommEventProto getDefault() => _defaultInstance ??= create()..freeze();
  static CommEventProto _defaultInstance;

  ConsumeEventProto get consume => $_getN(0);
  set consume(ConsumeEventProto v) { setField(1, v); }
  $core.bool hasConsume() => $_has(0);
  void clearConsume() => clearField(1);

  $core.List<ProduceEventProto> get produces => $_getList(1);

  $core.List<PeekProto> get peeks => $_getList(2);
}

class PeekProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PeekProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.int>(1, 'channelIndex', $pb.PbFieldType.O3, protoName: 'channelIndex')
    ..hasRequiredFields = false
  ;

  PeekProto._() : super();
  factory PeekProto() => create();
  factory PeekProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeekProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PeekProto clone() => PeekProto()..mergeFromMessage(this);
  PeekProto copyWith(void Function(PeekProto) updates) => super.copyWith((message) => updates(message as PeekProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeekProto create() => PeekProto._();
  PeekProto createEmptyInstance() => create();
  static $pb.PbList<PeekProto> createRepeated() => $pb.PbList<PeekProto>();
  static PeekProto getDefault() => _defaultInstance ??= create()..freeze();
  static PeekProto _defaultInstance;

  $core.int get channelIndex => $_get(0, 0);
  set channelIndex($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasChannelIndex() => $_has(0);
  void clearChannelIndex() => clearField(1);
}

class BondProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BondProto', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'validator', $pb.PbFieldType.OY)
    ..aInt64(2, 'stake')
    ..hasRequiredFields = false
  ;

  BondProto._() : super();
  factory BondProto() => create();
  factory BondProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BondProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BondProto clone() => BondProto()..mergeFromMessage(this);
  BondProto copyWith(void Function(BondProto) updates) => super.copyWith((message) => updates(message as BondProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BondProto create() => BondProto._();
  BondProto createEmptyInstance() => create();
  static $pb.PbList<BondProto> createRepeated() => $pb.PbList<BondProto>();
  static BondProto getDefault() => _defaultInstance ??= create()..freeze();
  static BondProto _defaultInstance;

  $core.List<$core.int> get validator => $_getN(0);
  set validator($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasValidator() => $_has(0);
  void clearValidator() => clearField(1);

  Int64 get stake => $_getI64(1);
  set stake(Int64 v) { $_setInt64(1, v); }
  $core.bool hasStake() => $_has(1);
  void clearStake() => clearField(2);
}

