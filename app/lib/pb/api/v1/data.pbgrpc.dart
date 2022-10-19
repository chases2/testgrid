///
//  Generated code. Do not modify.
//  source: pb/api/v1/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'data.pb.dart' as $1;
export 'data.pb.dart';

class TestGridDataClient extends $grpc.Client {
  static final _$listDashboard =
      $grpc.ClientMethod<$1.ListDashboardRequest, $1.ListDashboardResponse>(
          '/testgrid.api.v1.TestGridData/ListDashboard',
          ($1.ListDashboardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListDashboardResponse.fromBuffer(value));
  static final _$listDashboardGroup = $grpc.ClientMethod<
          $1.ListDashboardGroupRequest, $1.ListDashboardGroupResponse>(
      '/testgrid.api.v1.TestGridData/ListDashboardGroup',
      ($1.ListDashboardGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListDashboardGroupResponse.fromBuffer(value));
  static final _$listDashboardTabs = $grpc.ClientMethod<
          $1.ListDashboardTabsRequest, $1.ListDashboardTabsResponse>(
      '/testgrid.api.v1.TestGridData/ListDashboardTabs',
      ($1.ListDashboardTabsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListDashboardTabsResponse.fromBuffer(value));
  static final _$getDashboard =
      $grpc.ClientMethod<$1.GetDashboardRequest, $1.GetDashboardResponse>(
          '/testgrid.api.v1.TestGridData/GetDashboard',
          ($1.GetDashboardRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetDashboardResponse.fromBuffer(value));
  static final _$getDashboardGroup = $grpc.ClientMethod<
          $1.GetDashboardGroupRequest, $1.GetDashboardGroupResponse>(
      '/testgrid.api.v1.TestGridData/GetDashboardGroup',
      ($1.GetDashboardGroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetDashboardGroupResponse.fromBuffer(value));
  static final _$listHeaders =
      $grpc.ClientMethod<$1.ListHeadersRequest, $1.ListHeadersResponse>(
          '/testgrid.api.v1.TestGridData/ListHeaders',
          ($1.ListHeadersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListHeadersResponse.fromBuffer(value));
  static final _$listRows =
      $grpc.ClientMethod<$1.ListRowsRequest, $1.ListRowsResponse>(
          '/testgrid.api.v1.TestGridData/ListRows',
          ($1.ListRowsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListRowsResponse.fromBuffer(value));

  TestGridDataClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.ListDashboardResponse> listDashboard(
      $1.ListDashboardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDashboard, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListDashboardGroupResponse> listDashboardGroup(
      $1.ListDashboardGroupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDashboardGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListDashboardTabsResponse> listDashboardTabs(
      $1.ListDashboardTabsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDashboardTabs, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetDashboardResponse> getDashboard(
      $1.GetDashboardRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDashboard, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetDashboardGroupResponse> getDashboardGroup(
      $1.GetDashboardGroupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDashboardGroup, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListHeadersResponse> listHeaders(
      $1.ListHeadersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listHeaders, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListRowsResponse> listRows($1.ListRowsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRows, request, options: options);
  }
}

abstract class TestGridDataServiceBase extends $grpc.Service {
  $core.String get $name => 'testgrid.api.v1.TestGridData';

  TestGridDataServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.ListDashboardRequest, $1.ListDashboardResponse>(
            'ListDashboard',
            listDashboard_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListDashboardRequest.fromBuffer(value),
            ($1.ListDashboardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListDashboardGroupRequest,
            $1.ListDashboardGroupResponse>(
        'ListDashboardGroup',
        listDashboardGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListDashboardGroupRequest.fromBuffer(value),
        ($1.ListDashboardGroupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListDashboardTabsRequest,
            $1.ListDashboardTabsResponse>(
        'ListDashboardTabs',
        listDashboardTabs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListDashboardTabsRequest.fromBuffer(value),
        ($1.ListDashboardTabsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetDashboardRequest, $1.GetDashboardResponse>(
            'GetDashboard',
            getDashboard_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetDashboardRequest.fromBuffer(value),
            ($1.GetDashboardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetDashboardGroupRequest,
            $1.GetDashboardGroupResponse>(
        'GetDashboardGroup',
        getDashboardGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetDashboardGroupRequest.fromBuffer(value),
        ($1.GetDashboardGroupResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListHeadersRequest, $1.ListHeadersResponse>(
            'ListHeaders',
            listHeaders_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListHeadersRequest.fromBuffer(value),
            ($1.ListHeadersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListRowsRequest, $1.ListRowsResponse>(
        'ListRows',
        listRows_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListRowsRequest.fromBuffer(value),
        ($1.ListRowsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListDashboardResponse> listDashboard_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListDashboardRequest> request) async {
    return listDashboard(call, await request);
  }

  $async.Future<$1.ListDashboardGroupResponse> listDashboardGroup_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListDashboardGroupRequest> request) async {
    return listDashboardGroup(call, await request);
  }

  $async.Future<$1.ListDashboardTabsResponse> listDashboardTabs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListDashboardTabsRequest> request) async {
    return listDashboardTabs(call, await request);
  }

  $async.Future<$1.GetDashboardResponse> getDashboard_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetDashboardRequest> request) async {
    return getDashboard(call, await request);
  }

  $async.Future<$1.GetDashboardGroupResponse> getDashboardGroup_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetDashboardGroupRequest> request) async {
    return getDashboardGroup(call, await request);
  }

  $async.Future<$1.ListHeadersResponse> listHeaders_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListHeadersRequest> request) async {
    return listHeaders(call, await request);
  }

  $async.Future<$1.ListRowsResponse> listRows_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ListRowsRequest> request) async {
    return listRows(call, await request);
  }

  $async.Future<$1.ListDashboardResponse> listDashboard(
      $grpc.ServiceCall call, $1.ListDashboardRequest request);
  $async.Future<$1.ListDashboardGroupResponse> listDashboardGroup(
      $grpc.ServiceCall call, $1.ListDashboardGroupRequest request);
  $async.Future<$1.ListDashboardTabsResponse> listDashboardTabs(
      $grpc.ServiceCall call, $1.ListDashboardTabsRequest request);
  $async.Future<$1.GetDashboardResponse> getDashboard(
      $grpc.ServiceCall call, $1.GetDashboardRequest request);
  $async.Future<$1.GetDashboardGroupResponse> getDashboardGroup(
      $grpc.ServiceCall call, $1.GetDashboardGroupRequest request);
  $async.Future<$1.ListHeadersResponse> listHeaders(
      $grpc.ServiceCall call, $1.ListHeadersRequest request);
  $async.Future<$1.ListRowsResponse> listRows(
      $grpc.ServiceCall call, $1.ListRowsRequest request);
}
