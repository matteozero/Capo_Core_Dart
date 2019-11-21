///
//  Generated code. Do not modify.
//  source: DeployServiceV1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'CasperMessage.pb.dart' as $0;
import 'DeployServiceV1.pb.dart' as $1;
import 'DeployServiceCommon.pb.dart' as $2;
export 'DeployServiceV1.pb.dart';

class DeployServiceClient extends $grpc.Client {
  static final _$doDeploy =
      $grpc.ClientMethod<$0.DeployDataProto, $1.DeployResponse>(
          '/casper.v1.DeployService/doDeploy',
          ($0.DeployDataProto value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.DeployResponse.fromBuffer(value));
  static final _$getBlock = $grpc.ClientMethod<$2.BlockQuery, $1.BlockResponse>(
      '/casper.v1.DeployService/getBlock',
      ($2.BlockQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BlockResponse.fromBuffer(value));
  static final _$visualizeDag =
      $grpc.ClientMethod<$2.VisualizeDagQuery, $1.VisualizeBlocksResponse>(
          '/casper.v1.DeployService/visualizeDag',
          ($2.VisualizeDagQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.VisualizeBlocksResponse.fromBuffer(value));
  static final _$machineVerifiableDag =
      $grpc.ClientMethod<$2.MachineVerifyQuery, $1.MachineVerifyResponse>(
          '/casper.v1.DeployService/machineVerifiableDag',
          ($2.MachineVerifyQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MachineVerifyResponse.fromBuffer(value));
  static final _$showMainChain =
      $grpc.ClientMethod<$2.BlocksQuery, $1.BlockInfoResponse>(
          '/casper.v1.DeployService/showMainChain',
          ($2.BlocksQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BlockInfoResponse.fromBuffer(value));
  static final _$getBlocks =
      $grpc.ClientMethod<$2.BlocksQuery, $1.BlockInfoResponse>(
          '/casper.v1.DeployService/getBlocks',
          ($2.BlocksQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BlockInfoResponse.fromBuffer(value));
  static final _$listenForDataAtName =
      $grpc.ClientMethod<$2.DataAtNameQuery, $1.ListeningNameDataResponse>(
          '/casper.v1.DeployService/listenForDataAtName',
          ($2.DataAtNameQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListeningNameDataResponse.fromBuffer(value));
  static final _$listenForContinuationAtName = $grpc.ClientMethod<
          $2.ContinuationAtNameQuery, $1.ContinuationAtNameResponse>(
      '/casper.v1.DeployService/listenForContinuationAtName',
      ($2.ContinuationAtNameQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ContinuationAtNameResponse.fromBuffer(value));
  static final _$findDeploy =
      $grpc.ClientMethod<$2.FindDeployQuery, $1.FindDeployResponse>(
          '/casper.v1.DeployService/findDeploy',
          ($2.FindDeployQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.FindDeployResponse.fromBuffer(value));
  static final _$previewPrivateNames = $grpc.ClientMethod<
          $2.PrivateNamePreviewQuery, $1.PrivateNamePreviewResponse>(
      '/casper.v1.DeployService/previewPrivateNames',
      ($2.PrivateNamePreviewQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.PrivateNamePreviewResponse.fromBuffer(value));
  static final _$lastFinalizedBlock = $grpc.ClientMethod<
          $2.LastFinalizedBlockQuery, $1.LastFinalizedBlockResponse>(
      '/casper.v1.DeployService/lastFinalizedBlock',
      ($2.LastFinalizedBlockQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.LastFinalizedBlockResponse.fromBuffer(value));
  static final _$isFinalized =
      $grpc.ClientMethod<$2.IsFinalizedQuery, $1.IsFinalizedResponse>(
          '/casper.v1.DeployService/isFinalized',
          ($2.IsFinalizedQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.IsFinalizedResponse.fromBuffer(value));
  static final _$bondStatus =
      $grpc.ClientMethod<$2.BondStatusQuery, $1.BondStatusResponse>(
          '/casper.v1.DeployService/bondStatus',
          ($2.BondStatusQuery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BondStatusResponse.fromBuffer(value));

  DeployServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.DeployResponse> doDeploy($0.DeployDataProto request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$doDeploy, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BlockResponse> getBlock($2.BlockQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getBlock, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$1.VisualizeBlocksResponse> visualizeDag(
      $2.VisualizeDagQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$visualizeDag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$1.MachineVerifyResponse> machineVerifiableDag(
      $2.MachineVerifyQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$machineVerifiableDag, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$1.BlockInfoResponse> showMainChain(
      $2.BlocksQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$showMainChain, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$1.BlockInfoResponse> getBlocks($2.BlocksQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getBlocks, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$1.ListeningNameDataResponse> listenForDataAtName(
      $2.DataAtNameQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listenForDataAtName, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ContinuationAtNameResponse>
      listenForContinuationAtName($2.ContinuationAtNameQuery request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listenForContinuationAtName, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.FindDeployResponse> findDeploy(
      $2.FindDeployQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$findDeploy, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.PrivateNamePreviewResponse> previewPrivateNames(
      $2.PrivateNamePreviewQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$previewPrivateNames, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.LastFinalizedBlockResponse> lastFinalizedBlock(
      $2.LastFinalizedBlockQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$lastFinalizedBlock, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.IsFinalizedResponse> isFinalized(
      $2.IsFinalizedQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$isFinalized, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.BondStatusResponse> bondStatus(
      $2.BondStatusQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$bondStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class DeployServiceBase extends $grpc.Service {
  $core.String get $name => 'casper.v1.DeployService';

  DeployServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DeployDataProto, $1.DeployResponse>(
        'doDeploy',
        doDeploy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeployDataProto.fromBuffer(value),
        ($1.DeployResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BlockQuery, $1.BlockResponse>(
        'getBlock',
        getBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BlockQuery.fromBuffer(value),
        ($1.BlockResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.VisualizeDagQuery, $1.VisualizeBlocksResponse>(
            'visualizeDag',
            visualizeDag_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $2.VisualizeDagQuery.fromBuffer(value),
            ($1.VisualizeBlocksResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.MachineVerifyQuery, $1.MachineVerifyResponse>(
            'machineVerifiableDag',
            machineVerifiableDag_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.MachineVerifyQuery.fromBuffer(value),
            ($1.MachineVerifyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BlocksQuery, $1.BlockInfoResponse>(
        'showMainChain',
        showMainChain_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.BlocksQuery.fromBuffer(value),
        ($1.BlockInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BlocksQuery, $1.BlockInfoResponse>(
        'getBlocks',
        getBlocks_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.BlocksQuery.fromBuffer(value),
        ($1.BlockInfoResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.DataAtNameQuery, $1.ListeningNameDataResponse>(
            'listenForDataAtName',
            listenForDataAtName_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.DataAtNameQuery.fromBuffer(value),
            ($1.ListeningNameDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ContinuationAtNameQuery,
            $1.ContinuationAtNameResponse>(
        'listenForContinuationAtName',
        listenForContinuationAtName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ContinuationAtNameQuery.fromBuffer(value),
        ($1.ContinuationAtNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FindDeployQuery, $1.FindDeployResponse>(
        'findDeploy',
        findDeploy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FindDeployQuery.fromBuffer(value),
        ($1.FindDeployResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PrivateNamePreviewQuery,
            $1.PrivateNamePreviewResponse>(
        'previewPrivateNames',
        previewPrivateNames_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.PrivateNamePreviewQuery.fromBuffer(value),
        ($1.PrivateNamePreviewResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LastFinalizedBlockQuery,
            $1.LastFinalizedBlockResponse>(
        'lastFinalizedBlock',
        lastFinalizedBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.LastFinalizedBlockQuery.fromBuffer(value),
        ($1.LastFinalizedBlockResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.IsFinalizedQuery, $1.IsFinalizedResponse>(
        'isFinalized',
        isFinalized_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.IsFinalizedQuery.fromBuffer(value),
        ($1.IsFinalizedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BondStatusQuery, $1.BondStatusResponse>(
        'bondStatus',
        bondStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BondStatusQuery.fromBuffer(value),
        ($1.BondStatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.DeployResponse> doDeploy_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeployDataProto> request) async {
    return doDeploy(call, await request);
  }

  $async.Future<$1.BlockResponse> getBlock_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BlockQuery> request) async {
    return getBlock(call, await request);
  }

  $async.Stream<$1.VisualizeBlocksResponse> visualizeDag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.VisualizeDagQuery> request) async* {
    yield* visualizeDag(call, await request);
  }

  $async.Future<$1.MachineVerifyResponse> machineVerifiableDag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.MachineVerifyQuery> request) async {
    return machineVerifiableDag(call, await request);
  }

  $async.Stream<$1.BlockInfoResponse> showMainChain_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BlocksQuery> request) async* {
    yield* showMainChain(call, await request);
  }

  $async.Stream<$1.BlockInfoResponse> getBlocks_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BlocksQuery> request) async* {
    yield* getBlocks(call, await request);
  }

  $async.Future<$1.ListeningNameDataResponse> listenForDataAtName_Pre(
      $grpc.ServiceCall call, $async.Future<$2.DataAtNameQuery> request) async {
    return listenForDataAtName(call, await request);
  }

  $async.Future<$1.ContinuationAtNameResponse> listenForContinuationAtName_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ContinuationAtNameQuery> request) async {
    return listenForContinuationAtName(call, await request);
  }

  $async.Future<$1.FindDeployResponse> findDeploy_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FindDeployQuery> request) async {
    return findDeploy(call, await request);
  }

  $async.Future<$1.PrivateNamePreviewResponse> previewPrivateNames_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.PrivateNamePreviewQuery> request) async {
    return previewPrivateNames(call, await request);
  }

  $async.Future<$1.LastFinalizedBlockResponse> lastFinalizedBlock_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.LastFinalizedBlockQuery> request) async {
    return lastFinalizedBlock(call, await request);
  }

  $async.Future<$1.IsFinalizedResponse> isFinalized_Pre($grpc.ServiceCall call,
      $async.Future<$2.IsFinalizedQuery> request) async {
    return isFinalized(call, await request);
  }

  $async.Future<$1.BondStatusResponse> bondStatus_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BondStatusQuery> request) async {
    return bondStatus(call, await request);
  }

  $async.Future<$1.DeployResponse> doDeploy(
      $grpc.ServiceCall call, $0.DeployDataProto request);
  $async.Future<$1.BlockResponse> getBlock(
      $grpc.ServiceCall call, $2.BlockQuery request);
  $async.Stream<$1.VisualizeBlocksResponse> visualizeDag(
      $grpc.ServiceCall call, $2.VisualizeDagQuery request);
  $async.Future<$1.MachineVerifyResponse> machineVerifiableDag(
      $grpc.ServiceCall call, $2.MachineVerifyQuery request);
  $async.Stream<$1.BlockInfoResponse> showMainChain(
      $grpc.ServiceCall call, $2.BlocksQuery request);
  $async.Stream<$1.BlockInfoResponse> getBlocks(
      $grpc.ServiceCall call, $2.BlocksQuery request);
  $async.Future<$1.ListeningNameDataResponse> listenForDataAtName(
      $grpc.ServiceCall call, $2.DataAtNameQuery request);
  $async.Future<$1.ContinuationAtNameResponse> listenForContinuationAtName(
      $grpc.ServiceCall call, $2.ContinuationAtNameQuery request);
  $async.Future<$1.FindDeployResponse> findDeploy(
      $grpc.ServiceCall call, $2.FindDeployQuery request);
  $async.Future<$1.PrivateNamePreviewResponse> previewPrivateNames(
      $grpc.ServiceCall call, $2.PrivateNamePreviewQuery request);
  $async.Future<$1.LastFinalizedBlockResponse> lastFinalizedBlock(
      $grpc.ServiceCall call, $2.LastFinalizedBlockQuery request);
  $async.Future<$1.IsFinalizedResponse> isFinalized(
      $grpc.ServiceCall call, $2.IsFinalizedQuery request);
  $async.Future<$1.BondStatusResponse> bondStatus(
      $grpc.ServiceCall call, $2.BondStatusQuery request);
}
