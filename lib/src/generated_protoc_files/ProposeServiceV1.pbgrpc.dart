///
//  Generated code. Do not modify.
//  source: ProposeServiceV1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'ProposeServiceCommon.pb.dart' as $0;
import 'ProposeServiceV1.pb.dart' as $1;
export 'ProposeServiceV1.pb.dart';

class ProposeServiceClient extends $grpc.Client {
  static final _$propose =
      $grpc.ClientMethod<$0.PrintUnmatchedSendsQuery, $1.ProposeResponse>(
          '/casper.v1.ProposeService/propose',
          ($0.PrintUnmatchedSendsQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ProposeResponse.fromBuffer(value));

  ProposeServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.ProposeResponse> propose(
      $0.PrintUnmatchedSendsQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$propose, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ProposeServiceBase extends $grpc.Service {
  $core.String get $name => 'casper.v1.ProposeService';

  ProposeServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.PrintUnmatchedSendsQuery, $1.ProposeResponse>(
            'propose',
            propose_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PrintUnmatchedSendsQuery.fromBuffer(value),
            ($1.ProposeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ProposeResponse> propose_Pre($grpc.ServiceCall call,
      $async.Future<$0.PrintUnmatchedSendsQuery> request) async {
    return propose(call, await request);
  }

  $async.Future<$1.ProposeResponse> propose(
      $grpc.ServiceCall call, $0.PrintUnmatchedSendsQuery request);
}
