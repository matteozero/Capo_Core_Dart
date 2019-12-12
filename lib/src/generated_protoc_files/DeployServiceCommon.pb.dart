///
//  Generated code. Do not modify.
//  source: DeployServiceCommon.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'RhoTypes.pb.dart' as $0;

class FindDeployQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindDeployQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'deployId', $pb.PbFieldType.OY, protoName: 'deployId')
    ..hasRequiredFields = false
  ;

  FindDeployQuery._() : super();
  factory FindDeployQuery() => create();
  factory FindDeployQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindDeployQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FindDeployQuery clone() => FindDeployQuery()..mergeFromMessage(this);
  FindDeployQuery copyWith(void Function(FindDeployQuery) updates) => super.copyWith((message) => updates(message as FindDeployQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindDeployQuery create() => FindDeployQuery._();
  FindDeployQuery createEmptyInstance() => create();
  static $pb.PbList<FindDeployQuery> createRepeated() => $pb.PbList<FindDeployQuery>();
  static FindDeployQuery getDefault() => _defaultInstance ??= create()..freeze();
  static FindDeployQuery _defaultInstance;

  $core.List<$core.int> get deployId => $_getN(0);
  set deployId($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasDeployId() => $_has(0);
  void clearDeployId() => clearField(1);
}

class BlockQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'hash')
    ..hasRequiredFields = false
  ;

  BlockQuery._() : super();
  factory BlockQuery() => create();
  factory BlockQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockQuery clone() => BlockQuery()..mergeFromMessage(this);
  BlockQuery copyWith(void Function(BlockQuery) updates) => super.copyWith((message) => updates(message as BlockQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockQuery create() => BlockQuery._();
  BlockQuery createEmptyInstance() => create();
  static $pb.PbList<BlockQuery> createRepeated() => $pb.PbList<BlockQuery>();
  static BlockQuery getDefault() => _defaultInstance ??= create()..freeze();
  static BlockQuery _defaultInstance;

  $core.String get hash => $_getS(0, '');
  set hash($core.String v) { $_setString(0, v); }
  $core.bool hasHash() => $_has(0);
  void clearHash() => clearField(1);
}

class BlocksQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlocksQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.int>(1, 'depth', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BlocksQuery._() : super();
  factory BlocksQuery() => create();
  factory BlocksQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlocksQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlocksQuery clone() => BlocksQuery()..mergeFromMessage(this);
  BlocksQuery copyWith(void Function(BlocksQuery) updates) => super.copyWith((message) => updates(message as BlocksQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlocksQuery create() => BlocksQuery._();
  BlocksQuery createEmptyInstance() => create();
  static $pb.PbList<BlocksQuery> createRepeated() => $pb.PbList<BlocksQuery>();
  static BlocksQuery getDefault() => _defaultInstance ??= create()..freeze();
  static BlocksQuery _defaultInstance;

  $core.int get depth => $_get(0, 0);
  set depth($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasDepth() => $_has(0);
  void clearDepth() => clearField(1);
}

class DataAtNameQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DataAtNameQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.int>(1, 'depth', $pb.PbFieldType.O3)
    ..a<$0.Par>(2, 'name', $pb.PbFieldType.OM, defaultOrMaker: $0.Par.getDefault, subBuilder: $0.Par.create)
    ..hasRequiredFields = false
  ;

  DataAtNameQuery._() : super();
  factory DataAtNameQuery() => create();
  factory DataAtNameQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataAtNameQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DataAtNameQuery clone() => DataAtNameQuery()..mergeFromMessage(this);
  DataAtNameQuery copyWith(void Function(DataAtNameQuery) updates) => super.copyWith((message) => updates(message as DataAtNameQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataAtNameQuery create() => DataAtNameQuery._();
  DataAtNameQuery createEmptyInstance() => create();
  static $pb.PbList<DataAtNameQuery> createRepeated() => $pb.PbList<DataAtNameQuery>();
  static DataAtNameQuery getDefault() => _defaultInstance ??= create()..freeze();
  static DataAtNameQuery _defaultInstance;

  $core.int get depth => $_get(0, 0);
  set depth($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasDepth() => $_has(0);
  void clearDepth() => clearField(1);

  $0.Par get name => $_getN(1);
  set name($0.Par v) { setField(2, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class ContinuationAtNameQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContinuationAtNameQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.int>(1, 'depth', $pb.PbFieldType.O3)
    ..pc<$0.Par>(2, 'names', $pb.PbFieldType.PM, subBuilder: $0.Par.create)
    ..hasRequiredFields = false
  ;

  ContinuationAtNameQuery._() : super();
  factory ContinuationAtNameQuery() => create();
  factory ContinuationAtNameQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContinuationAtNameQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContinuationAtNameQuery clone() => ContinuationAtNameQuery()..mergeFromMessage(this);
  ContinuationAtNameQuery copyWith(void Function(ContinuationAtNameQuery) updates) => super.copyWith((message) => updates(message as ContinuationAtNameQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContinuationAtNameQuery create() => ContinuationAtNameQuery._();
  ContinuationAtNameQuery createEmptyInstance() => create();
  static $pb.PbList<ContinuationAtNameQuery> createRepeated() => $pb.PbList<ContinuationAtNameQuery>();
  static ContinuationAtNameQuery getDefault() => _defaultInstance ??= create()..freeze();
  static ContinuationAtNameQuery _defaultInstance;

  $core.int get depth => $_get(0, 0);
  set depth($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasDepth() => $_has(0);
  void clearDepth() => clearField(1);

  $core.List<$0.Par> get names => $_getList(1);
}

class VisualizeDagQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VisualizeDagQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.int>(1, 'depth', $pb.PbFieldType.O3)
    ..aOB(2, 'showJustificationLines', protoName: 'showJustificationLines')
    ..hasRequiredFields = false
  ;

  VisualizeDagQuery._() : super();
  factory VisualizeDagQuery() => create();
  factory VisualizeDagQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VisualizeDagQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VisualizeDagQuery clone() => VisualizeDagQuery()..mergeFromMessage(this);
  VisualizeDagQuery copyWith(void Function(VisualizeDagQuery) updates) => super.copyWith((message) => updates(message as VisualizeDagQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VisualizeDagQuery create() => VisualizeDagQuery._();
  VisualizeDagQuery createEmptyInstance() => create();
  static $pb.PbList<VisualizeDagQuery> createRepeated() => $pb.PbList<VisualizeDagQuery>();
  static VisualizeDagQuery getDefault() => _defaultInstance ??= create()..freeze();
  static VisualizeDagQuery _defaultInstance;

  $core.int get depth => $_get(0, 0);
  set depth($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasDepth() => $_has(0);
  void clearDepth() => clearField(1);

  $core.bool get showJustificationLines => $_get(1, false);
  set showJustificationLines($core.bool v) { $_setBool(1, v); }
  $core.bool hasShowJustificationLines() => $_has(1);
  void clearShowJustificationLines() => clearField(2);
}

class MachineVerifyQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MachineVerifyQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MachineVerifyQuery._() : super();
  factory MachineVerifyQuery() => create();
  factory MachineVerifyQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MachineVerifyQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MachineVerifyQuery clone() => MachineVerifyQuery()..mergeFromMessage(this);
  MachineVerifyQuery copyWith(void Function(MachineVerifyQuery) updates) => super.copyWith((message) => updates(message as MachineVerifyQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MachineVerifyQuery create() => MachineVerifyQuery._();
  MachineVerifyQuery createEmptyInstance() => create();
  static $pb.PbList<MachineVerifyQuery> createRepeated() => $pb.PbList<MachineVerifyQuery>();
  static MachineVerifyQuery getDefault() => _defaultInstance ??= create()..freeze();
  static MachineVerifyQuery _defaultInstance;
}

class PrivateNamePreviewQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PrivateNamePreviewQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'user', $pb.PbFieldType.OY)
    ..aInt64(2, 'timestamp')
    ..a<$core.int>(3, 'nameQty', $pb.PbFieldType.O3, protoName: 'nameQty')
    ..hasRequiredFields = false
  ;

  PrivateNamePreviewQuery._() : super();
  factory PrivateNamePreviewQuery() => create();
  factory PrivateNamePreviewQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateNamePreviewQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PrivateNamePreviewQuery clone() => PrivateNamePreviewQuery()..mergeFromMessage(this);
  PrivateNamePreviewQuery copyWith(void Function(PrivateNamePreviewQuery) updates) => super.copyWith((message) => updates(message as PrivateNamePreviewQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateNamePreviewQuery create() => PrivateNamePreviewQuery._();
  PrivateNamePreviewQuery createEmptyInstance() => create();
  static $pb.PbList<PrivateNamePreviewQuery> createRepeated() => $pb.PbList<PrivateNamePreviewQuery>();
  static PrivateNamePreviewQuery getDefault() => _defaultInstance ??= create()..freeze();
  static PrivateNamePreviewQuery _defaultInstance;

  $core.List<$core.int> get user => $_getN(0);
  set user($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasUser() => $_has(0);
  void clearUser() => clearField(1);

  Int64 get timestamp => $_getI64(1);
  set timestamp(Int64 v) { $_setInt64(1, v); }
  $core.bool hasTimestamp() => $_has(1);
  void clearTimestamp() => clearField(2);

  $core.int get nameQty => $_get(2, 0);
  set nameQty($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasNameQty() => $_has(2);
  void clearNameQty() => clearField(3);
}

class LastFinalizedBlockQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LastFinalizedBlockQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LastFinalizedBlockQuery._() : super();
  factory LastFinalizedBlockQuery() => create();
  factory LastFinalizedBlockQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastFinalizedBlockQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LastFinalizedBlockQuery clone() => LastFinalizedBlockQuery()..mergeFromMessage(this);
  LastFinalizedBlockQuery copyWith(void Function(LastFinalizedBlockQuery) updates) => super.copyWith((message) => updates(message as LastFinalizedBlockQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastFinalizedBlockQuery create() => LastFinalizedBlockQuery._();
  LastFinalizedBlockQuery createEmptyInstance() => create();
  static $pb.PbList<LastFinalizedBlockQuery> createRepeated() => $pb.PbList<LastFinalizedBlockQuery>();
  static LastFinalizedBlockQuery getDefault() => _defaultInstance ??= create()..freeze();
  static LastFinalizedBlockQuery _defaultInstance;
}

class IsFinalizedQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsFinalizedQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'hash')
    ..hasRequiredFields = false
  ;

  IsFinalizedQuery._() : super();
  factory IsFinalizedQuery() => create();
  factory IsFinalizedQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsFinalizedQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsFinalizedQuery clone() => IsFinalizedQuery()..mergeFromMessage(this);
  IsFinalizedQuery copyWith(void Function(IsFinalizedQuery) updates) => super.copyWith((message) => updates(message as IsFinalizedQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsFinalizedQuery create() => IsFinalizedQuery._();
  IsFinalizedQuery createEmptyInstance() => create();
  static $pb.PbList<IsFinalizedQuery> createRepeated() => $pb.PbList<IsFinalizedQuery>();
  static IsFinalizedQuery getDefault() => _defaultInstance ??= create()..freeze();
  static IsFinalizedQuery _defaultInstance;

  $core.String get hash => $_getS(0, '');
  set hash($core.String v) { $_setString(0, v); }
  $core.bool hasHash() => $_has(0);
  void clearHash() => clearField(1);
}

class BondStatusQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BondStatusQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  BondStatusQuery._() : super();
  factory BondStatusQuery() => create();
  factory BondStatusQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BondStatusQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BondStatusQuery clone() => BondStatusQuery()..mergeFromMessage(this);
  BondStatusQuery copyWith(void Function(BondStatusQuery) updates) => super.copyWith((message) => updates(message as BondStatusQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BondStatusQuery create() => BondStatusQuery._();
  BondStatusQuery createEmptyInstance() => create();
  static $pb.PbList<BondStatusQuery> createRepeated() => $pb.PbList<BondStatusQuery>();
  static BondStatusQuery getDefault() => _defaultInstance ??= create()..freeze();
  static BondStatusQuery _defaultInstance;

  $core.List<$core.int> get publicKey => $_getN(0);
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPublicKey() => $_has(0);
  void clearPublicKey() => clearField(1);
}

class LightBlockInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LightBlockInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'blockHash', protoName: 'blockHash')
    ..aOS(2, 'blockSize', protoName: 'blockSize')
    ..aInt64(3, 'blockNumber', protoName: 'blockNumber')
    ..aInt64(4, 'version')
    ..a<$core.int>(5, 'deployCount', $pb.PbFieldType.O3, protoName: 'deployCount')
    ..aOS(6, 'tupleSpaceHash', protoName: 'tupleSpaceHash')
    ..aInt64(7, 'timestamp')
    ..a<$core.double>(8, 'faultTolerance', $pb.PbFieldType.OF, protoName: 'faultTolerance')
    ..aOS(9, 'mainParentHash', protoName: 'mainParentHash')
    ..pPS(10, 'parentsHashList', protoName: 'parentsHashList')
    ..aOS(11, 'sender')
    ..hasRequiredFields = false
  ;

  LightBlockInfo._() : super();
  factory LightBlockInfo() => create();
  factory LightBlockInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LightBlockInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LightBlockInfo clone() => LightBlockInfo()..mergeFromMessage(this);
  LightBlockInfo copyWith(void Function(LightBlockInfo) updates) => super.copyWith((message) => updates(message as LightBlockInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightBlockInfo create() => LightBlockInfo._();
  LightBlockInfo createEmptyInstance() => create();
  static $pb.PbList<LightBlockInfo> createRepeated() => $pb.PbList<LightBlockInfo>();
  static LightBlockInfo getDefault() => _defaultInstance ??= create()..freeze();
  static LightBlockInfo _defaultInstance;

  $core.String get blockHash => $_getS(0, '');
  set blockHash($core.String v) { $_setString(0, v); }
  $core.bool hasBlockHash() => $_has(0);
  void clearBlockHash() => clearField(1);

  $core.String get blockSize => $_getS(1, '');
  set blockSize($core.String v) { $_setString(1, v); }
  $core.bool hasBlockSize() => $_has(1);
  void clearBlockSize() => clearField(2);

  Int64 get blockNumber => $_getI64(2);
  set blockNumber(Int64 v) { $_setInt64(2, v); }
  $core.bool hasBlockNumber() => $_has(2);
  void clearBlockNumber() => clearField(3);

  Int64 get version => $_getI64(3);
  set version(Int64 v) { $_setInt64(3, v); }
  $core.bool hasVersion() => $_has(3);
  void clearVersion() => clearField(4);

  $core.int get deployCount => $_get(4, 0);
  set deployCount($core.int v) { $_setSignedInt32(4, v); }
  $core.bool hasDeployCount() => $_has(4);
  void clearDeployCount() => clearField(5);

  $core.String get tupleSpaceHash => $_getS(5, '');
  set tupleSpaceHash($core.String v) { $_setString(5, v); }
  $core.bool hasTupleSpaceHash() => $_has(5);
  void clearTupleSpaceHash() => clearField(6);

  Int64 get timestamp => $_getI64(6);
  set timestamp(Int64 v) { $_setInt64(6, v); }
  $core.bool hasTimestamp() => $_has(6);
  void clearTimestamp() => clearField(7);

  $core.double get faultTolerance => $_getN(7);
  set faultTolerance($core.double v) { $_setFloat(7, v); }
  $core.bool hasFaultTolerance() => $_has(7);
  void clearFaultTolerance() => clearField(8);

  $core.String get mainParentHash => $_getS(8, '');
  set mainParentHash($core.String v) { $_setString(8, v); }
  $core.bool hasMainParentHash() => $_has(8);
  void clearMainParentHash() => clearField(9);

  $core.List<$core.String> get parentsHashList => $_getList(9);

  $core.String get sender => $_getS(10, '');
  set sender($core.String v) { $_setString(10, v); }
  $core.bool hasSender() => $_has(10);
  void clearSender() => clearField(11);
}

class BlockInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'blockHash', protoName: 'blockHash')
    ..aOS(2, 'blockSize', protoName: 'blockSize')
    ..aInt64(3, 'blockNumber', protoName: 'blockNumber')
    ..aInt64(4, 'version')
    ..a<$core.int>(5, 'deployCount', $pb.PbFieldType.O3, protoName: 'deployCount')
    ..aOS(6, 'tupleSpaceHash', protoName: 'tupleSpaceHash')
    ..aInt64(7, 'timestamp')
    ..a<$core.double>(8, 'faultTolerance', $pb.PbFieldType.OF, protoName: 'faultTolerance')
    ..aOS(9, 'mainParentHash', protoName: 'mainParentHash')
    ..pPS(10, 'parentsHashList', protoName: 'parentsHashList')
    ..aOS(11, 'sender')
    ..aOS(12, 'shardId', protoName: 'shardId')
    ..pPS(13, 'bondsValidatorList', protoName: 'bondsValidatorList')
    ..pPS(14, 'deployCost', protoName: 'deployCost')
    ..hasRequiredFields = false
  ;

  BlockInfo._() : super();
  factory BlockInfo() => create();
  factory BlockInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockInfo clone() => BlockInfo()..mergeFromMessage(this);
  BlockInfo copyWith(void Function(BlockInfo) updates) => super.copyWith((message) => updates(message as BlockInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockInfo create() => BlockInfo._();
  BlockInfo createEmptyInstance() => create();
  static $pb.PbList<BlockInfo> createRepeated() => $pb.PbList<BlockInfo>();
  static BlockInfo getDefault() => _defaultInstance ??= create()..freeze();
  static BlockInfo _defaultInstance;

  $core.String get blockHash => $_getS(0, '');
  set blockHash($core.String v) { $_setString(0, v); }
  $core.bool hasBlockHash() => $_has(0);
  void clearBlockHash() => clearField(1);

  $core.String get blockSize => $_getS(1, '');
  set blockSize($core.String v) { $_setString(1, v); }
  $core.bool hasBlockSize() => $_has(1);
  void clearBlockSize() => clearField(2);

  Int64 get blockNumber => $_getI64(2);
  set blockNumber(Int64 v) { $_setInt64(2, v); }
  $core.bool hasBlockNumber() => $_has(2);
  void clearBlockNumber() => clearField(3);

  Int64 get version => $_getI64(3);
  set version(Int64 v) { $_setInt64(3, v); }
  $core.bool hasVersion() => $_has(3);
  void clearVersion() => clearField(4);

  $core.int get deployCount => $_get(4, 0);
  set deployCount($core.int v) { $_setSignedInt32(4, v); }
  $core.bool hasDeployCount() => $_has(4);
  void clearDeployCount() => clearField(5);

  $core.String get tupleSpaceHash => $_getS(5, '');
  set tupleSpaceHash($core.String v) { $_setString(5, v); }
  $core.bool hasTupleSpaceHash() => $_has(5);
  void clearTupleSpaceHash() => clearField(6);

  Int64 get timestamp => $_getI64(6);
  set timestamp(Int64 v) { $_setInt64(6, v); }
  $core.bool hasTimestamp() => $_has(6);
  void clearTimestamp() => clearField(7);

  $core.double get faultTolerance => $_getN(7);
  set faultTolerance($core.double v) { $_setFloat(7, v); }
  $core.bool hasFaultTolerance() => $_has(7);
  void clearFaultTolerance() => clearField(8);

  $core.String get mainParentHash => $_getS(8, '');
  set mainParentHash($core.String v) { $_setString(8, v); }
  $core.bool hasMainParentHash() => $_has(8);
  void clearMainParentHash() => clearField(9);

  $core.List<$core.String> get parentsHashList => $_getList(9);

  $core.String get sender => $_getS(10, '');
  set sender($core.String v) { $_setString(10, v); }
  $core.bool hasSender() => $_has(10);
  void clearSender() => clearField(11);

  $core.String get shardId => $_getS(11, '');
  set shardId($core.String v) { $_setString(11, v); }
  $core.bool hasShardId() => $_has(11);
  void clearShardId() => clearField(12);

  $core.List<$core.String> get bondsValidatorList => $_getList(12);

  $core.List<$core.String> get deployCost => $_getList(13);
}

class DataWithBlockInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DataWithBlockInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..pc<$0.Par>(1, 'postBlockData', $pb.PbFieldType.PM, protoName: 'postBlockData', subBuilder: $0.Par.create)
    ..a<LightBlockInfo>(2, 'block', $pb.PbFieldType.OM, defaultOrMaker: LightBlockInfo.getDefault, subBuilder: LightBlockInfo.create)
    ..hasRequiredFields = false
  ;

  DataWithBlockInfo._() : super();
  factory DataWithBlockInfo() => create();
  factory DataWithBlockInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataWithBlockInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DataWithBlockInfo clone() => DataWithBlockInfo()..mergeFromMessage(this);
  DataWithBlockInfo copyWith(void Function(DataWithBlockInfo) updates) => super.copyWith((message) => updates(message as DataWithBlockInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataWithBlockInfo create() => DataWithBlockInfo._();
  DataWithBlockInfo createEmptyInstance() => create();
  static $pb.PbList<DataWithBlockInfo> createRepeated() => $pb.PbList<DataWithBlockInfo>();
  static DataWithBlockInfo getDefault() => _defaultInstance ??= create()..freeze();
  static DataWithBlockInfo _defaultInstance;

  $core.List<$0.Par> get postBlockData => $_getList(0);

  LightBlockInfo get block => $_getN(1);
  set block(LightBlockInfo v) { setField(2, v); }
  $core.bool hasBlock() => $_has(1);
  void clearBlock() => clearField(2);
}

class ContinuationsWithBlockInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContinuationsWithBlockInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..pc<WaitingContinuationInfo>(1, 'postBlockContinuations', $pb.PbFieldType.PM, protoName: 'postBlockContinuations', subBuilder: WaitingContinuationInfo.create)
    ..a<LightBlockInfo>(2, 'block', $pb.PbFieldType.OM, defaultOrMaker: LightBlockInfo.getDefault, subBuilder: LightBlockInfo.create)
    ..hasRequiredFields = false
  ;

  ContinuationsWithBlockInfo._() : super();
  factory ContinuationsWithBlockInfo() => create();
  factory ContinuationsWithBlockInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContinuationsWithBlockInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContinuationsWithBlockInfo clone() => ContinuationsWithBlockInfo()..mergeFromMessage(this);
  ContinuationsWithBlockInfo copyWith(void Function(ContinuationsWithBlockInfo) updates) => super.copyWith((message) => updates(message as ContinuationsWithBlockInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContinuationsWithBlockInfo create() => ContinuationsWithBlockInfo._();
  ContinuationsWithBlockInfo createEmptyInstance() => create();
  static $pb.PbList<ContinuationsWithBlockInfo> createRepeated() => $pb.PbList<ContinuationsWithBlockInfo>();
  static ContinuationsWithBlockInfo getDefault() => _defaultInstance ??= create()..freeze();
  static ContinuationsWithBlockInfo _defaultInstance;

  $core.List<WaitingContinuationInfo> get postBlockContinuations => $_getList(0);

  LightBlockInfo get block => $_getN(1);
  set block(LightBlockInfo v) { setField(2, v); }
  $core.bool hasBlock() => $_has(1);
  void clearBlock() => clearField(2);
}

class WaitingContinuationInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WaitingContinuationInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..pc<$0.BindPattern>(1, 'postBlockPatterns', $pb.PbFieldType.PM, protoName: 'postBlockPatterns', subBuilder: $0.BindPattern.create)
    ..a<$0.Par>(2, 'postBlockContinuation', $pb.PbFieldType.OM, protoName: 'postBlockContinuation', defaultOrMaker: $0.Par.getDefault, subBuilder: $0.Par.create)
    ..hasRequiredFields = false
  ;

  WaitingContinuationInfo._() : super();
  factory WaitingContinuationInfo() => create();
  factory WaitingContinuationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitingContinuationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WaitingContinuationInfo clone() => WaitingContinuationInfo()..mergeFromMessage(this);
  WaitingContinuationInfo copyWith(void Function(WaitingContinuationInfo) updates) => super.copyWith((message) => updates(message as WaitingContinuationInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WaitingContinuationInfo create() => WaitingContinuationInfo._();
  WaitingContinuationInfo createEmptyInstance() => create();
  static $pb.PbList<WaitingContinuationInfo> createRepeated() => $pb.PbList<WaitingContinuationInfo>();
  static WaitingContinuationInfo getDefault() => _defaultInstance ??= create()..freeze();
  static WaitingContinuationInfo _defaultInstance;

  $core.List<$0.BindPattern> get postBlockPatterns => $_getList(0);

  $0.Par get postBlockContinuation => $_getN(1);
  set postBlockContinuation($0.Par v) { setField(2, v); }
  $core.bool hasPostBlockContinuation() => $_has(1);
  void clearPostBlockContinuation() => clearField(2);
}

