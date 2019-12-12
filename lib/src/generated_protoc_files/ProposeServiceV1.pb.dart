///
//  Generated code. Do not modify.
//  source: ProposeServiceV1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ServiceError.pb.dart' as $2;

enum ProposeResponse_Message {
  error, 
  result, 
  notSet
}

class ProposeResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ProposeResponse_Message> _ProposeResponse_MessageByTag = {
    1 : ProposeResponse_Message.error,
    2 : ProposeResponse_Message.result,
    0 : ProposeResponse_Message.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProposeResponse', package: const $pb.PackageName('casper.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$2.ServiceError>(1, 'error', $pb.PbFieldType.OM, defaultOrMaker: $2.ServiceError.getDefault, subBuilder: $2.ServiceError.create)
    ..aOS(2, 'result')
    ..hasRequiredFields = false
  ;

  ProposeResponse._() : super();
  factory ProposeResponse() => create();
  factory ProposeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProposeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProposeResponse clone() => ProposeResponse()..mergeFromMessage(this);
  ProposeResponse copyWith(void Function(ProposeResponse) updates) => super.copyWith((message) => updates(message as ProposeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProposeResponse create() => ProposeResponse._();
  ProposeResponse createEmptyInstance() => create();
  static $pb.PbList<ProposeResponse> createRepeated() => $pb.PbList<ProposeResponse>();
  static ProposeResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ProposeResponse _defaultInstance;

  ProposeResponse_Message whichMessage() => _ProposeResponse_MessageByTag[$_whichOneof(0)];
  void clearMessage() => clearField($_whichOneof(0));

  $2.ServiceError get error => $_getN(0);
  set error($2.ServiceError v) { setField(1, v); }
  $core.bool hasError() => $_has(0);
  void clearError() => clearField(1);

  $core.String get result => $_getS(1, '');
  set result($core.String v) { $_setString(1, v); }
  $core.bool hasResult() => $_has(1);
  void clearResult() => clearField(2);
}

