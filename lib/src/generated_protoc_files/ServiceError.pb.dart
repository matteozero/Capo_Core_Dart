///
//  Generated code. Do not modify.
//  source: ServiceError.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ServiceError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceError', createEmptyInstance: create)
    ..pPS(1, 'messages')
    ..hasRequiredFields = false
  ;

  ServiceError._() : super();
  factory ServiceError() => create();
  factory ServiceError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceError clone() => ServiceError()..mergeFromMessage(this);
  ServiceError copyWith(void Function(ServiceError) updates) => super.copyWith((message) => updates(message as ServiceError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceError create() => ServiceError._();
  ServiceError createEmptyInstance() => create();
  static $pb.PbList<ServiceError> createRepeated() => $pb.PbList<ServiceError>();
  static ServiceError getDefault() => _defaultInstance ??= create()..freeze();
  static ServiceError _defaultInstance;

  $core.List<$core.String> get messages => $_getList(0);
}

