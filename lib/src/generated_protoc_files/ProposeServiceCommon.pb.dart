///
//  Generated code. Do not modify.
//  source: ProposeServiceCommon.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PrintUnmatchedSendsQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PrintUnmatchedSendsQuery', package: const $pb.PackageName('casper'), createEmptyInstance: create)
    ..aOB(1, 'printUnmatchedSends', protoName: 'printUnmatchedSends')
    ..hasRequiredFields = false
  ;

  PrintUnmatchedSendsQuery._() : super();
  factory PrintUnmatchedSendsQuery() => create();
  factory PrintUnmatchedSendsQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrintUnmatchedSendsQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PrintUnmatchedSendsQuery clone() => PrintUnmatchedSendsQuery()..mergeFromMessage(this);
  PrintUnmatchedSendsQuery copyWith(void Function(PrintUnmatchedSendsQuery) updates) => super.copyWith((message) => updates(message as PrintUnmatchedSendsQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrintUnmatchedSendsQuery create() => PrintUnmatchedSendsQuery._();
  PrintUnmatchedSendsQuery createEmptyInstance() => create();
  static $pb.PbList<PrintUnmatchedSendsQuery> createRepeated() => $pb.PbList<PrintUnmatchedSendsQuery>();
  static PrintUnmatchedSendsQuery getDefault() => _defaultInstance ??= create()..freeze();
  static PrintUnmatchedSendsQuery _defaultInstance;

  $core.bool get printUnmatchedSends => $_get(0, false);
  set printUnmatchedSends($core.bool v) { $_setBool(0, v); }
  $core.bool hasPrintUnmatchedSends() => $_has(0);
  void clearPrintUnmatchedSends() => clearField(1);
}

