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

class BondInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BondInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'validator')
    ..aInt64(2, 'stake')
    ..hasRequiredFields = false
  ;

  BondInfo._() : super();
  factory BondInfo() => create();
  factory BondInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BondInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BondInfo clone() => BondInfo()..mergeFromMessage(this);
  BondInfo copyWith(void Function(BondInfo) updates) => super.copyWith((message) => updates(message as BondInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BondInfo create() => BondInfo._();
  BondInfo createEmptyInstance() => create();
  static $pb.PbList<BondInfo> createRepeated() => $pb.PbList<BondInfo>();
  static BondInfo getDefault() => _defaultInstance ??= create()..freeze();
  static BondInfo _defaultInstance;

  $core.String get validator => $_getS(0, '');
  set validator($core.String v) { $_setString(0, v); }
  $core.bool hasValidator() => $_has(0);
  void clearValidator() => clearField(1);

  Int64 get stake => $_getI64(1);
  set stake(Int64 v) { $_setInt64(1, v); }
  $core.bool hasStake() => $_has(1);
  void clearStake() => clearField(2);
}

class DeployInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeployInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'deployer')
    ..aOS(2, 'term')
    ..aInt64(3, 'timestamp')
    ..aOS(4, 'sig')
    ..aOS(5, 'sigAlgorithm', protoName: 'sigAlgorithm')
    ..aInt64(7, 'phloPrice', protoName: 'phloPrice')
    ..aInt64(8, 'phloLimit', protoName: 'phloLimit')
    ..aInt64(9, 'validAfterBlockNumber', protoName: 'validAfterBlockNumber')
    ..a<Int64>(10, 'cost', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aOB(11, 'errored')
    ..aOS(12, 'systemDeployError', protoName: 'systemDeployError')
    ..hasRequiredFields = false
  ;

  DeployInfo._() : super();
  factory DeployInfo() => create();
  factory DeployInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeployInfo clone() => DeployInfo()..mergeFromMessage(this);
  DeployInfo copyWith(void Function(DeployInfo) updates) => super.copyWith((message) => updates(message as DeployInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployInfo create() => DeployInfo._();
  DeployInfo createEmptyInstance() => create();
  static $pb.PbList<DeployInfo> createRepeated() => $pb.PbList<DeployInfo>();
  static DeployInfo getDefault() => _defaultInstance ??= create()..freeze();
  static DeployInfo _defaultInstance;

  $core.String get deployer => $_getS(0, '');
  set deployer($core.String v) { $_setString(0, v); }
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

  $core.String get sig => $_getS(3, '');
  set sig($core.String v) { $_setString(3, v); }
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
  void clearValidAfterBlockNumber() => clearField(9);

  Int64 get cost => $_getI64(8);
  set cost(Int64 v) { $_setInt64(8, v); }
  $core.bool hasCost() => $_has(8);
  void clearCost() => clearField(10);

  $core.bool get errored => $_get(9, false);
  set errored($core.bool v) { $_setBool(9, v); }
  $core.bool hasErrored() => $_has(9);
  void clearErrored() => clearField(11);

  $core.String get systemDeployError => $_getS(10, '');
  set systemDeployError($core.String v) { $_setString(10, v); }
  $core.bool hasSystemDeployError() => $_has(10);
  void clearSystemDeployError() => clearField(12);
}

class LightBlockInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LightBlockInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOS(1, 'blockHash', protoName: 'blockHash')
    ..aOS(2, 'sender')
    ..aInt64(3, 'seqNum', protoName: 'seqNum')
    ..aOS(4, 'sig')
    ..aOS(5, 'sigAlgorithm', protoName: 'sigAlgorithm')
    ..aOS(6, 'shardId', protoName: 'shardId')
    ..a<$core.List<$core.int>>(7, 'extraBytes', $pb.PbFieldType.OY, protoName: 'extraBytes')
    ..aInt64(8, 'version')
    ..aInt64(9, 'timestamp')
    ..a<$core.List<$core.int>>(10, 'headerExtraBytes', $pb.PbFieldType.OY, protoName: 'headerExtraBytes')
    ..pPS(11, 'parentsHashList', protoName: 'parentsHashList')
    ..aInt64(12, 'blockNumber', protoName: 'blockNumber')
    ..aOS(13, 'preStateHash', protoName: 'preStateHash')
    ..aOS(14, 'postStateHash', protoName: 'postStateHash')
    ..a<$core.List<$core.int>>(15, 'bodyExtraBytes', $pb.PbFieldType.OY, protoName: 'bodyExtraBytes')
    ..pc<BondInfo>(16, 'bonds', $pb.PbFieldType.PM, subBuilder: BondInfo.create)
    ..aOS(17, 'blockSize', protoName: 'blockSize')
    ..a<$core.int>(18, 'deployCount', $pb.PbFieldType.O3, protoName: 'deployCount')
    ..a<$core.double>(19, 'faultTolerance', $pb.PbFieldType.OF, protoName: 'faultTolerance')
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

  $core.String get sender => $_getS(1, '');
  set sender($core.String v) { $_setString(1, v); }
  $core.bool hasSender() => $_has(1);
  void clearSender() => clearField(2);

  Int64 get seqNum => $_getI64(2);
  set seqNum(Int64 v) { $_setInt64(2, v); }
  $core.bool hasSeqNum() => $_has(2);
  void clearSeqNum() => clearField(3);

  $core.String get sig => $_getS(3, '');
  set sig($core.String v) { $_setString(3, v); }
  $core.bool hasSig() => $_has(3);
  void clearSig() => clearField(4);

  $core.String get sigAlgorithm => $_getS(4, '');
  set sigAlgorithm($core.String v) { $_setString(4, v); }
  $core.bool hasSigAlgorithm() => $_has(4);
  void clearSigAlgorithm() => clearField(5);

  $core.String get shardId => $_getS(5, '');
  set shardId($core.String v) { $_setString(5, v); }
  $core.bool hasShardId() => $_has(5);
  void clearShardId() => clearField(6);

  $core.List<$core.int> get extraBytes => $_getN(6);
  set extraBytes($core.List<$core.int> v) { $_setBytes(6, v); }
  $core.bool hasExtraBytes() => $_has(6);
  void clearExtraBytes() => clearField(7);

  Int64 get version => $_getI64(7);
  set version(Int64 v) { $_setInt64(7, v); }
  $core.bool hasVersion() => $_has(7);
  void clearVersion() => clearField(8);

  Int64 get timestamp => $_getI64(8);
  set timestamp(Int64 v) { $_setInt64(8, v); }
  $core.bool hasTimestamp() => $_has(8);
  void clearTimestamp() => clearField(9);

  $core.List<$core.int> get headerExtraBytes => $_getN(9);
  set headerExtraBytes($core.List<$core.int> v) { $_setBytes(9, v); }
  $core.bool hasHeaderExtraBytes() => $_has(9);
  void clearHeaderExtraBytes() => clearField(10);

  $core.List<$core.String> get parentsHashList => $_getList(10);

  Int64 get blockNumber => $_getI64(11);
  set blockNumber(Int64 v) { $_setInt64(11, v); }
  $core.bool hasBlockNumber() => $_has(11);
  void clearBlockNumber() => clearField(12);

  $core.String get preStateHash => $_getS(12, '');
  set preStateHash($core.String v) { $_setString(12, v); }
  $core.bool hasPreStateHash() => $_has(12);
  void clearPreStateHash() => clearField(13);

  $core.String get postStateHash => $_getS(13, '');
  set postStateHash($core.String v) { $_setString(13, v); }
  $core.bool hasPostStateHash() => $_has(13);
  void clearPostStateHash() => clearField(14);

  $core.List<$core.int> get bodyExtraBytes => $_getN(14);
  set bodyExtraBytes($core.List<$core.int> v) { $_setBytes(14, v); }
  $core.bool hasBodyExtraBytes() => $_has(14);
  void clearBodyExtraBytes() => clearField(15);

  $core.List<BondInfo> get bonds => $_getList(15);

  $core.String get blockSize => $_getS(16, '');
  set blockSize($core.String v) { $_setString(16, v); }
  $core.bool hasBlockSize() => $_has(16);
  void clearBlockSize() => clearField(17);

  $core.int get deployCount => $_get(17, 0);
  set deployCount($core.int v) { $_setSignedInt32(17, v); }
  $core.bool hasDeployCount() => $_has(17);
  void clearDeployCount() => clearField(18);

  $core.double get faultTolerance => $_getN(18);
  set faultTolerance($core.double v) { $_setFloat(18, v); }
  $core.bool hasFaultTolerance() => $_has(18);
  void clearFaultTolerance() => clearField(19);
}

class BlockInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockInfo', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..a<LightBlockInfo>(1, 'blockInfo', $pb.PbFieldType.OM, protoName: 'blockInfo', defaultOrMaker: LightBlockInfo.getDefault, subBuilder: LightBlockInfo.create)
    ..pc<DeployInfo>(2, 'deploys', $pb.PbFieldType.PM, subBuilder: DeployInfo.create)
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

  LightBlockInfo get blockInfo => $_getN(0);
  set blockInfo(LightBlockInfo v) { setField(1, v); }
  $core.bool hasBlockInfo() => $_has(0);
  void clearBlockInfo() => clearField(1);

  $core.List<DeployInfo> get deploys => $_getList(1);
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

