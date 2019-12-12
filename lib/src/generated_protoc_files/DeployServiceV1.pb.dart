///
//  Generated code. Do not modify.
//  source: DeployServiceV1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ServiceError.pb.dart' as $3;
import 'DeployServiceCommon.pb.dart' as $2;

enum DeployResponse_Message {
  error, 
  result, 
  notSet
}

class DeployResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, DeployResponse_Message> _DeployResponse_MessageByTag = {
    1 : DeployResponse_Message.error,
    2 : DeployResponse_Message.result,
    0 : DeployResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeployResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..aOS(2, 'result')
    ..hasRequiredFields = false
  ;

  DeployResponse._() : super();
  factory DeployResponse() => create();
  factory DeployResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeployResponse clone() => DeployResponse()..mergeFromMessage(this);
  DeployResponse copyWith(void Function(DeployResponse) updates) => super.copyWith((message) => updates(message as DeployResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployResponse create() => DeployResponse._();
  DeployResponse createEmptyInstance() => create();
  static $pb.PbList<DeployResponse> createRepeated() => $pb.PbList<DeployResponse>();
  static DeployResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeployResponse _defaultInstance;

  DeployResponse_Message whichMessage() => _DeployResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $core.String get result => $_getS(1, '');
  set result($core.String v) { $_setString(1, v); }
  $core.bool hasResult() => $_has(1);
  void clearResult() => clearField(2);
}

enum BlockResponse_Message {
  error, 
  blockInfo, 
  notSet
}

class BlockResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BlockResponse_Message> _BlockResponse_MessageByTag = {
    1 : BlockResponse_Message.error,
    2 : BlockResponse_Message.blockInfo,
    0 : BlockResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..a<$2.BlockInfo>(2, 'blockInfo', $pb.PbFieldType.OM, protoName: 'blockInfo', defaultOrMaker: $2.BlockInfo.getDefault, subBuilder: $2.BlockInfo.create)
    ..hasRequiredFields = false
  ;

  BlockResponse._() : super();
  factory BlockResponse() => create();
  factory BlockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockResponse clone() => BlockResponse()..mergeFromMessage(this);
  BlockResponse copyWith(void Function(BlockResponse) updates) => super.copyWith((message) => updates(message as BlockResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockResponse create() => BlockResponse._();
  BlockResponse createEmptyInstance() => create();
  static $pb.PbList<BlockResponse> createRepeated() => $pb.PbList<BlockResponse>();
  static BlockResponse getDefault() => _defaultInstance ??= create()..freeze();
  static BlockResponse _defaultInstance;

  BlockResponse_Message whichMessage() => _BlockResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $2.BlockInfo get blockInfo => $_getN(1);
  set blockInfo($2.BlockInfo v) { setField(2, v); }
  $core.bool hasBlockInfo() => $_has(1);
  void clearBlockInfo() => clearField(2);
}

enum VisualizeBlocksResponse_Message {
  error, 
  content, 
  notSet
}

class VisualizeBlocksResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, VisualizeBlocksResponse_Message> _VisualizeBlocksResponse_MessageByTag = {
    1 : VisualizeBlocksResponse_Message.error,
    2 : VisualizeBlocksResponse_Message.content,
    0 : VisualizeBlocksResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VisualizeBlocksResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..aOS(2, 'content')
    ..hasRequiredFields = false
  ;

  VisualizeBlocksResponse._() : super();
  factory VisualizeBlocksResponse() => create();
  factory VisualizeBlocksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VisualizeBlocksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VisualizeBlocksResponse clone() => VisualizeBlocksResponse()..mergeFromMessage(this);
  VisualizeBlocksResponse copyWith(void Function(VisualizeBlocksResponse) updates) => super.copyWith((message) => updates(message as VisualizeBlocksResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VisualizeBlocksResponse create() => VisualizeBlocksResponse._();
  VisualizeBlocksResponse createEmptyInstance() => create();
  static $pb.PbList<VisualizeBlocksResponse> createRepeated() => $pb.PbList<VisualizeBlocksResponse>();
  static VisualizeBlocksResponse getDefault() => _defaultInstance ??= create()..freeze();
  static VisualizeBlocksResponse _defaultInstance;

  VisualizeBlocksResponse_Message whichMessage() => _VisualizeBlocksResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $core.String get content => $_getS(1, '');
  set content($core.String v) { $_setString(1, v); }
  $core.bool hasContent() => $_has(1);
  void clearContent() => clearField(2);
}

enum MachineVerifyResponse_Message {
  error, 
  content, 
  notSet
}

class MachineVerifyResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, MachineVerifyResponse_Message> _MachineVerifyResponse_MessageByTag = {
    1 : MachineVerifyResponse_Message.error,
    2 : MachineVerifyResponse_Message.content,
    0 : MachineVerifyResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MachineVerifyResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..aOS(2, 'content')
    ..hasRequiredFields = false
  ;

  MachineVerifyResponse._() : super();
  factory MachineVerifyResponse() => create();
  factory MachineVerifyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MachineVerifyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MachineVerifyResponse clone() => MachineVerifyResponse()..mergeFromMessage(this);
  MachineVerifyResponse copyWith(void Function(MachineVerifyResponse) updates) => super.copyWith((message) => updates(message as MachineVerifyResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MachineVerifyResponse create() => MachineVerifyResponse._();
  MachineVerifyResponse createEmptyInstance() => create();
  static $pb.PbList<MachineVerifyResponse> createRepeated() => $pb.PbList<MachineVerifyResponse>();
  static MachineVerifyResponse getDefault() => _defaultInstance ??= create()..freeze();
  static MachineVerifyResponse _defaultInstance;

  MachineVerifyResponse_Message whichMessage() => _MachineVerifyResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $core.String get content => $_getS(1, '');
  set content($core.String v) { $_setString(1, v); }
  $core.bool hasContent() => $_has(1);
  void clearContent() => clearField(2);
}

enum BlockInfoResponse_Message {
  error, 
  blockInfo, 
  notSet
}

class BlockInfoResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BlockInfoResponse_Message> _BlockInfoResponse_MessageByTag = {
    1 : BlockInfoResponse_Message.error,
    2 : BlockInfoResponse_Message.blockInfo,
    0 : BlockInfoResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockInfoResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..a<$2.LightBlockInfo>(2, 'blockInfo', $pb.PbFieldType.OM, protoName: 'blockInfo', defaultOrMaker: $2.LightBlockInfo.getDefault, subBuilder: $2.LightBlockInfo.create)
    ..hasRequiredFields = false
  ;

  BlockInfoResponse._() : super();
  factory BlockInfoResponse() => create();
  factory BlockInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockInfoResponse clone() => BlockInfoResponse()..mergeFromMessage(this);
  BlockInfoResponse copyWith(void Function(BlockInfoResponse) updates) => super.copyWith((message) => updates(message as BlockInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockInfoResponse create() => BlockInfoResponse._();
  BlockInfoResponse createEmptyInstance() => create();
  static $pb.PbList<BlockInfoResponse> createRepeated() => $pb.PbList<BlockInfoResponse>();
  static BlockInfoResponse getDefault() => _defaultInstance ??= create()..freeze();
  static BlockInfoResponse _defaultInstance;

  BlockInfoResponse_Message whichMessage() => _BlockInfoResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $2.LightBlockInfo get blockInfo => $_getN(1);
  set blockInfo($2.LightBlockInfo v) { setField(2, v); }
  $core.bool hasBlockInfo() => $_has(1);
  void clearBlockInfo() => clearField(2);
}

enum ListeningNameDataResponse_Message {
  error, 
  payload, 
  notSet
}

class ListeningNameDataResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ListeningNameDataResponse_Message> _ListeningNameDataResponse_MessageByTag = {
    1 : ListeningNameDataResponse_Message.error,
    2 : ListeningNameDataResponse_Message.payload,
    0 : ListeningNameDataResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListeningNameDataResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..a<ListeningNameDataPayload>(2, 'payload', $pb.PbFieldType.OM, defaultOrMaker: ListeningNameDataPayload.getDefault, subBuilder: ListeningNameDataPayload.create)
    ..hasRequiredFields = false
  ;

  ListeningNameDataResponse._() : super();
  factory ListeningNameDataResponse() => create();
  factory ListeningNameDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListeningNameDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListeningNameDataResponse clone() => ListeningNameDataResponse()..mergeFromMessage(this);
  ListeningNameDataResponse copyWith(void Function(ListeningNameDataResponse) updates) => super.copyWith((message) => updates(message as ListeningNameDataResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListeningNameDataResponse create() => ListeningNameDataResponse._();
  ListeningNameDataResponse createEmptyInstance() => create();
  static $pb.PbList<ListeningNameDataResponse> createRepeated() => $pb.PbList<ListeningNameDataResponse>();
  static ListeningNameDataResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListeningNameDataResponse _defaultInstance;

  ListeningNameDataResponse_Message whichMessage() => _ListeningNameDataResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  ListeningNameDataPayload get payload => $_getN(1);
  set payload(ListeningNameDataPayload v) { setField(2, v); }
  $core.bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);
}

class ListeningNameDataPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListeningNameDataPayload', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..pc<$2.DataWithBlockInfo>(1, 'blockInfo', $pb.PbFieldType.PM, protoName: 'blockInfo', subBuilder: $2.DataWithBlockInfo.create)
    ..a<$core.int>(2, 'length', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ListeningNameDataPayload._() : super();
  factory ListeningNameDataPayload() => create();
  factory ListeningNameDataPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListeningNameDataPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListeningNameDataPayload clone() => ListeningNameDataPayload()..mergeFromMessage(this);
  ListeningNameDataPayload copyWith(void Function(ListeningNameDataPayload) updates) => super.copyWith((message) => updates(message as ListeningNameDataPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListeningNameDataPayload create() => ListeningNameDataPayload._();
  ListeningNameDataPayload createEmptyInstance() => create();
  static $pb.PbList<ListeningNameDataPayload> createRepeated() => $pb.PbList<ListeningNameDataPayload>();
  static ListeningNameDataPayload getDefault() => _defaultInstance ??= create()..freeze();
  static ListeningNameDataPayload _defaultInstance;

  $core.List<$2.DataWithBlockInfo> get blockInfo => $_getList(0);

  $core.int get length => $_get(1, 0);
  set length($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasLength() => $_has(1);
  void clearLength() => clearField(2);
}

enum ContinuationAtNameResponse_Message {
  error, 
  payload, 
  notSet
}

class ContinuationAtNameResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ContinuationAtNameResponse_Message> _ContinuationAtNameResponse_MessageByTag = {
    1 : ContinuationAtNameResponse_Message.error,
    2 : ContinuationAtNameResponse_Message.payload,
    0 : ContinuationAtNameResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContinuationAtNameResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..a<ContinuationAtNamePayload>(2, 'payload', $pb.PbFieldType.OM, defaultOrMaker: ContinuationAtNamePayload.getDefault, subBuilder: ContinuationAtNamePayload.create)
    ..hasRequiredFields = false
  ;

  ContinuationAtNameResponse._() : super();
  factory ContinuationAtNameResponse() => create();
  factory ContinuationAtNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContinuationAtNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContinuationAtNameResponse clone() => ContinuationAtNameResponse()..mergeFromMessage(this);
  ContinuationAtNameResponse copyWith(void Function(ContinuationAtNameResponse) updates) => super.copyWith((message) => updates(message as ContinuationAtNameResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContinuationAtNameResponse create() => ContinuationAtNameResponse._();
  ContinuationAtNameResponse createEmptyInstance() => create();
  static $pb.PbList<ContinuationAtNameResponse> createRepeated() => $pb.PbList<ContinuationAtNameResponse>();
  static ContinuationAtNameResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ContinuationAtNameResponse _defaultInstance;

  ContinuationAtNameResponse_Message whichMessage() => _ContinuationAtNameResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  ContinuationAtNamePayload get payload => $_getN(1);
  set payload(ContinuationAtNamePayload v) { setField(2, v); }
  $core.bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);
}

class ContinuationAtNamePayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContinuationAtNamePayload', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..pc<$2.ContinuationsWithBlockInfo>(1, 'blockResults', $pb.PbFieldType.PM, protoName: 'blockResults', subBuilder: $2.ContinuationsWithBlockInfo.create)
    ..a<$core.int>(2, 'length', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ContinuationAtNamePayload._() : super();
  factory ContinuationAtNamePayload() => create();
  factory ContinuationAtNamePayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContinuationAtNamePayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContinuationAtNamePayload clone() => ContinuationAtNamePayload()..mergeFromMessage(this);
  ContinuationAtNamePayload copyWith(void Function(ContinuationAtNamePayload) updates) => super.copyWith((message) => updates(message as ContinuationAtNamePayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContinuationAtNamePayload create() => ContinuationAtNamePayload._();
  ContinuationAtNamePayload createEmptyInstance() => create();
  static $pb.PbList<ContinuationAtNamePayload> createRepeated() => $pb.PbList<ContinuationAtNamePayload>();
  static ContinuationAtNamePayload getDefault() => _defaultInstance ??= create()..freeze();
  static ContinuationAtNamePayload _defaultInstance;

  $core.List<$2.ContinuationsWithBlockInfo> get blockResults => $_getList(0);

  $core.int get length => $_get(1, 0);
  set length($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasLength() => $_has(1);
  void clearLength() => clearField(2);
}

enum FindDeployResponse_Message {
  error, 
  blockInfo, 
  notSet
}

class FindDeployResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FindDeployResponse_Message> _FindDeployResponse_MessageByTag = {
    1 : FindDeployResponse_Message.error,
    2 : FindDeployResponse_Message.blockInfo,
    0 : FindDeployResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindDeployResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..a<$2.LightBlockInfo>(2, 'blockInfo', $pb.PbFieldType.OM, protoName: 'blockInfo', defaultOrMaker: $2.LightBlockInfo.getDefault, subBuilder: $2.LightBlockInfo.create)
    ..hasRequiredFields = false
  ;

  FindDeployResponse._() : super();
  factory FindDeployResponse() => create();
  factory FindDeployResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindDeployResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FindDeployResponse clone() => FindDeployResponse()..mergeFromMessage(this);
  FindDeployResponse copyWith(void Function(FindDeployResponse) updates) => super.copyWith((message) => updates(message as FindDeployResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindDeployResponse create() => FindDeployResponse._();
  FindDeployResponse createEmptyInstance() => create();
  static $pb.PbList<FindDeployResponse> createRepeated() => $pb.PbList<FindDeployResponse>();
  static FindDeployResponse getDefault() => _defaultInstance ??= create()..freeze();
  static FindDeployResponse _defaultInstance;

  FindDeployResponse_Message whichMessage() => _FindDeployResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $2.LightBlockInfo get blockInfo => $_getN(1);
  set blockInfo($2.LightBlockInfo v) { setField(2, v); }
  $core.bool hasBlockInfo() => $_has(1);
  void clearBlockInfo() => clearField(2);
}

enum PrivateNamePreviewResponse_Message {
  error, 
  payload, 
  notSet
}

class PrivateNamePreviewResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PrivateNamePreviewResponse_Message> _PrivateNamePreviewResponse_MessageByTag = {
    1 : PrivateNamePreviewResponse_Message.error,
    2 : PrivateNamePreviewResponse_Message.payload,
    0 : PrivateNamePreviewResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PrivateNamePreviewResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..a<PrivateNamePreviewPayload>(2, 'payload', $pb.PbFieldType.OM, defaultOrMaker: PrivateNamePreviewPayload.getDefault, subBuilder: PrivateNamePreviewPayload.create)
    ..hasRequiredFields = false
  ;

  PrivateNamePreviewResponse._() : super();
  factory PrivateNamePreviewResponse() => create();
  factory PrivateNamePreviewResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateNamePreviewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PrivateNamePreviewResponse clone() => PrivateNamePreviewResponse()..mergeFromMessage(this);
  PrivateNamePreviewResponse copyWith(void Function(PrivateNamePreviewResponse) updates) => super.copyWith((message) => updates(message as PrivateNamePreviewResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateNamePreviewResponse create() => PrivateNamePreviewResponse._();
  PrivateNamePreviewResponse createEmptyInstance() => create();
  static $pb.PbList<PrivateNamePreviewResponse> createRepeated() => $pb.PbList<PrivateNamePreviewResponse>();
  static PrivateNamePreviewResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PrivateNamePreviewResponse _defaultInstance;

  PrivateNamePreviewResponse_Message whichMessage() => _PrivateNamePreviewResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  PrivateNamePreviewPayload get payload => $_getN(1);
  set payload(PrivateNamePreviewPayload v) { setField(2, v); }
  $core.bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);
}

class PrivateNamePreviewPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PrivateNamePreviewPayload', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'ids', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  PrivateNamePreviewPayload._() : super();
  factory PrivateNamePreviewPayload() => create();
  factory PrivateNamePreviewPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateNamePreviewPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PrivateNamePreviewPayload clone() => PrivateNamePreviewPayload()..mergeFromMessage(this);
  PrivateNamePreviewPayload copyWith(void Function(PrivateNamePreviewPayload) updates) => super.copyWith((message) => updates(message as PrivateNamePreviewPayload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrivateNamePreviewPayload create() => PrivateNamePreviewPayload._();
  PrivateNamePreviewPayload createEmptyInstance() => create();
  static $pb.PbList<PrivateNamePreviewPayload> createRepeated() => $pb.PbList<PrivateNamePreviewPayload>();
  static PrivateNamePreviewPayload getDefault() => _defaultInstance ??= create()..freeze();
  static PrivateNamePreviewPayload _defaultInstance;

  $core.List<$core.List<$core.int>> get ids => $_getList(0);
}

enum LastFinalizedBlockResponse_Message {
  error, 
  blockInfo, 
  notSet
}

class LastFinalizedBlockResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LastFinalizedBlockResponse_Message> _LastFinalizedBlockResponse_MessageByTag = {
    1 : LastFinalizedBlockResponse_Message.error,
    2 : LastFinalizedBlockResponse_Message.blockInfo,
    0 : LastFinalizedBlockResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LastFinalizedBlockResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..a<$2.BlockInfo>(2, 'blockInfo', $pb.PbFieldType.OM, protoName: 'blockInfo', defaultOrMaker: $2.BlockInfo.getDefault, subBuilder: $2.BlockInfo.create)
    ..hasRequiredFields = false
  ;

  LastFinalizedBlockResponse._() : super();
  factory LastFinalizedBlockResponse() => create();
  factory LastFinalizedBlockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastFinalizedBlockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LastFinalizedBlockResponse clone() => LastFinalizedBlockResponse()..mergeFromMessage(this);
  LastFinalizedBlockResponse copyWith(void Function(LastFinalizedBlockResponse) updates) => super.copyWith((message) => updates(message as LastFinalizedBlockResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastFinalizedBlockResponse create() => LastFinalizedBlockResponse._();
  LastFinalizedBlockResponse createEmptyInstance() => create();
  static $pb.PbList<LastFinalizedBlockResponse> createRepeated() => $pb.PbList<LastFinalizedBlockResponse>();
  static LastFinalizedBlockResponse getDefault() => _defaultInstance ??= create()..freeze();
  static LastFinalizedBlockResponse _defaultInstance;

  LastFinalizedBlockResponse_Message whichMessage() => _LastFinalizedBlockResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $2.BlockInfo get blockInfo => $_getN(1);
  set blockInfo($2.BlockInfo v) { setField(2, v); }
  $core.bool hasBlockInfo() => $_has(1);
  void clearBlockInfo() => clearField(2);
}

enum IsFinalizedResponse_Message {
  error, 
  isFinalized, 
  notSet
}

class IsFinalizedResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, IsFinalizedResponse_Message> _IsFinalizedResponse_MessageByTag = {
    1 : IsFinalizedResponse_Message.error,
    2 : IsFinalizedResponse_Message.isFinalized,
    0 : IsFinalizedResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IsFinalizedResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..aOB(2, 'isFinalized', protoName: 'isFinalized')
    ..hasRequiredFields = false
  ;

  IsFinalizedResponse._() : super();
  factory IsFinalizedResponse() => create();
  factory IsFinalizedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsFinalizedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IsFinalizedResponse clone() => IsFinalizedResponse()..mergeFromMessage(this);
  IsFinalizedResponse copyWith(void Function(IsFinalizedResponse) updates) => super.copyWith((message) => updates(message as IsFinalizedResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsFinalizedResponse create() => IsFinalizedResponse._();
  IsFinalizedResponse createEmptyInstance() => create();
  static $pb.PbList<IsFinalizedResponse> createRepeated() => $pb.PbList<IsFinalizedResponse>();
  static IsFinalizedResponse getDefault() => _defaultInstance ??= create()..freeze();
  static IsFinalizedResponse _defaultInstance;

  IsFinalizedResponse_Message whichMessage() => _IsFinalizedResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $core.bool get isFinalized => $_get(1, false);
  set isFinalized($core.bool v) { $_setBool(1, v); }
  $core.bool hasIsFinalized() => $_has(1);
  void clearIsFinalized() => clearField(2);
}

enum BondStatusResponse_Message {
  error, 
  isBonded, 
  notSet
}

class BondStatusResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BondStatusResponse_Message> _BondStatusResponse_MessageByTag = {
    1 : BondStatusResponse_Message.error,
    2 : BondStatusResponse_Message.isBonded,
    0 : BondStatusResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BondStatusResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$3.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $3.ServiceError.getDefault, subBuilder: $3.ServiceError.create)
    ..aOB(2, 'isBonded', protoName: 'isBonded')
    ..hasRequiredFields = false
  ;

  BondStatusResponse._() : super();
  factory BondStatusResponse() => create();
  factory BondStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BondStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BondStatusResponse clone() => BondStatusResponse()..mergeFromMessage(this);
  BondStatusResponse copyWith(void Function(BondStatusResponse) updates) => super.copyWith((message) => updates(message as BondStatusResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BondStatusResponse create() => BondStatusResponse._();
  BondStatusResponse createEmptyInstance() => create();
  static $pb.PbList<BondStatusResponse> createRepeated() => $pb.PbList<BondStatusResponse>();
  static BondStatusResponse getDefault() => _defaultInstance ??= create()..freeze();
  static BondStatusResponse _defaultInstance;

  BondStatusResponse_Message whichMessage() => _BondStatusResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $3.ServiceError get error => $_getN(0);
  set error($3.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $core.bool get isBonded => $_get(1, false);
  set isBonded($core.bool v) { $_setBool(1, v); }
  $core.bool hasIsBonded() => $_has(1);
  void clearIsBonded() => clearField(2);
}

