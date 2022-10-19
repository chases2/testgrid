///
//  Generated code. Do not modify.
//  source: pb/api/v1/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../config/config.pb.dart' as $5;
import '../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../state/state.pb.dart' as $7;

class ListDashboardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDashboardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope')
    ..hasRequiredFields = false
  ;

  ListDashboardRequest._() : super();
  factory ListDashboardRequest({
    $core.String? scope,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    return _result;
  }
  factory ListDashboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDashboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDashboardRequest clone() => ListDashboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDashboardRequest copyWith(void Function(ListDashboardRequest) updates) => super.copyWith((message) => updates(message as ListDashboardRequest)) as ListDashboardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDashboardRequest create() => ListDashboardRequest._();
  ListDashboardRequest createEmptyInstance() => create();
  static $pb.PbList<ListDashboardRequest> createRepeated() => $pb.PbList<ListDashboardRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardRequest>(create);
  static ListDashboardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scope => $_getSZ(0);
  @$pb.TagNumber(1)
  set scope($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);
}

class ListDashboardResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDashboardResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..pc<Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboards', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  ListDashboardResponse._() : super();
  factory ListDashboardResponse({
    $core.Iterable<Resource>? dashboards,
  }) {
    final _result = create();
    if (dashboards != null) {
      _result.dashboards.addAll(dashboards);
    }
    return _result;
  }
  factory ListDashboardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDashboardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDashboardResponse clone() => ListDashboardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDashboardResponse copyWith(void Function(ListDashboardResponse) updates) => super.copyWith((message) => updates(message as ListDashboardResponse)) as ListDashboardResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDashboardResponse create() => ListDashboardResponse._();
  ListDashboardResponse createEmptyInstance() => create();
  static $pb.PbList<ListDashboardResponse> createRepeated() => $pb.PbList<ListDashboardResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardResponse>(create);
  static ListDashboardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get dashboards => $_getList(0);
}

class ListDashboardGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDashboardGroupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope')
    ..hasRequiredFields = false
  ;

  ListDashboardGroupRequest._() : super();
  factory ListDashboardGroupRequest({
    $core.String? scope,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    return _result;
  }
  factory ListDashboardGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDashboardGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDashboardGroupRequest clone() => ListDashboardGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDashboardGroupRequest copyWith(void Function(ListDashboardGroupRequest) updates) => super.copyWith((message) => updates(message as ListDashboardGroupRequest)) as ListDashboardGroupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDashboardGroupRequest create() => ListDashboardGroupRequest._();
  ListDashboardGroupRequest createEmptyInstance() => create();
  static $pb.PbList<ListDashboardGroupRequest> createRepeated() => $pb.PbList<ListDashboardGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardGroupRequest>(create);
  static ListDashboardGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scope => $_getSZ(0);
  @$pb.TagNumber(1)
  set scope($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);
}

class ListDashboardGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDashboardGroupResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..pc<Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardGroups', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  ListDashboardGroupResponse._() : super();
  factory ListDashboardGroupResponse({
    $core.Iterable<Resource>? dashboardGroups,
  }) {
    final _result = create();
    if (dashboardGroups != null) {
      _result.dashboardGroups.addAll(dashboardGroups);
    }
    return _result;
  }
  factory ListDashboardGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDashboardGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDashboardGroupResponse clone() => ListDashboardGroupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDashboardGroupResponse copyWith(void Function(ListDashboardGroupResponse) updates) => super.copyWith((message) => updates(message as ListDashboardGroupResponse)) as ListDashboardGroupResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDashboardGroupResponse create() => ListDashboardGroupResponse._();
  ListDashboardGroupResponse createEmptyInstance() => create();
  static $pb.PbList<ListDashboardGroupResponse> createRepeated() => $pb.PbList<ListDashboardGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardGroupResponse>(create);
  static ListDashboardGroupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get dashboardGroups => $_getList(0);
}

class ListDashboardTabsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDashboardTabsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboard')
    ..hasRequiredFields = false
  ;

  ListDashboardTabsRequest._() : super();
  factory ListDashboardTabsRequest({
    $core.String? scope,
    $core.String? dashboard,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (dashboard != null) {
      _result.dashboard = dashboard;
    }
    return _result;
  }
  factory ListDashboardTabsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDashboardTabsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDashboardTabsRequest clone() => ListDashboardTabsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDashboardTabsRequest copyWith(void Function(ListDashboardTabsRequest) updates) => super.copyWith((message) => updates(message as ListDashboardTabsRequest)) as ListDashboardTabsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDashboardTabsRequest create() => ListDashboardTabsRequest._();
  ListDashboardTabsRequest createEmptyInstance() => create();
  static $pb.PbList<ListDashboardTabsRequest> createRepeated() => $pb.PbList<ListDashboardTabsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardTabsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardTabsRequest>(create);
  static ListDashboardTabsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scope => $_getSZ(0);
  @$pb.TagNumber(1)
  set scope($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dashboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set dashboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDashboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearDashboard() => clearField(2);
}

class ListDashboardTabsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDashboardTabsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..pc<Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardTabs', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  ListDashboardTabsResponse._() : super();
  factory ListDashboardTabsResponse({
    $core.Iterable<Resource>? dashboardTabs,
  }) {
    final _result = create();
    if (dashboardTabs != null) {
      _result.dashboardTabs.addAll(dashboardTabs);
    }
    return _result;
  }
  factory ListDashboardTabsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDashboardTabsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDashboardTabsResponse clone() => ListDashboardTabsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDashboardTabsResponse copyWith(void Function(ListDashboardTabsResponse) updates) => super.copyWith((message) => updates(message as ListDashboardTabsResponse)) as ListDashboardTabsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDashboardTabsResponse create() => ListDashboardTabsResponse._();
  ListDashboardTabsResponse createEmptyInstance() => create();
  static $pb.PbList<ListDashboardTabsResponse> createRepeated() => $pb.PbList<ListDashboardTabsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardTabsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardTabsResponse>(create);
  static ListDashboardTabsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get dashboardTabs => $_getList(0);
}

class GetDashboardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDashboardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboard')
    ..hasRequiredFields = false
  ;

  GetDashboardRequest._() : super();
  factory GetDashboardRequest({
    $core.String? scope,
    $core.String? dashboard,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (dashboard != null) {
      _result.dashboard = dashboard;
    }
    return _result;
  }
  factory GetDashboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDashboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDashboardRequest clone() => GetDashboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDashboardRequest copyWith(void Function(GetDashboardRequest) updates) => super.copyWith((message) => updates(message as GetDashboardRequest)) as GetDashboardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDashboardRequest create() => GetDashboardRequest._();
  GetDashboardRequest createEmptyInstance() => create();
  static $pb.PbList<GetDashboardRequest> createRepeated() => $pb.PbList<GetDashboardRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDashboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDashboardRequest>(create);
  static GetDashboardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scope => $_getSZ(0);
  @$pb.TagNumber(1)
  set scope($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dashboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set dashboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDashboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearDashboard() => clearField(2);
}

class GetDashboardResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDashboardResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..pc<$5.Notification>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifications', $pb.PbFieldType.PM, subBuilder: $5.Notification.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultTab')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'suppressFailingTabs')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highlightToday')
    ..hasRequiredFields = false
  ;

  GetDashboardResponse._() : super();
  factory GetDashboardResponse({
    $core.Iterable<$5.Notification>? notifications,
    $core.String? defaultTab,
    $core.bool? suppressFailingTabs,
    $core.bool? highlightToday,
  }) {
    final _result = create();
    if (notifications != null) {
      _result.notifications.addAll(notifications);
    }
    if (defaultTab != null) {
      _result.defaultTab = defaultTab;
    }
    if (suppressFailingTabs != null) {
      _result.suppressFailingTabs = suppressFailingTabs;
    }
    if (highlightToday != null) {
      _result.highlightToday = highlightToday;
    }
    return _result;
  }
  factory GetDashboardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDashboardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDashboardResponse clone() => GetDashboardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDashboardResponse copyWith(void Function(GetDashboardResponse) updates) => super.copyWith((message) => updates(message as GetDashboardResponse)) as GetDashboardResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDashboardResponse create() => GetDashboardResponse._();
  GetDashboardResponse createEmptyInstance() => create();
  static $pb.PbList<GetDashboardResponse> createRepeated() => $pb.PbList<GetDashboardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDashboardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDashboardResponse>(create);
  static GetDashboardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.Notification> get notifications => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get defaultTab => $_getSZ(1);
  @$pb.TagNumber(2)
  set defaultTab($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDefaultTab() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefaultTab() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get suppressFailingTabs => $_getBF(2);
  @$pb.TagNumber(3)
  set suppressFailingTabs($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSuppressFailingTabs() => $_has(2);
  @$pb.TagNumber(3)
  void clearSuppressFailingTabs() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get highlightToday => $_getBF(3);
  @$pb.TagNumber(4)
  set highlightToday($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHighlightToday() => $_has(3);
  @$pb.TagNumber(4)
  void clearHighlightToday() => clearField(4);
}

class GetDashboardGroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDashboardGroupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardGroup')
    ..hasRequiredFields = false
  ;

  GetDashboardGroupRequest._() : super();
  factory GetDashboardGroupRequest({
    $core.String? scope,
    $core.String? dashboardGroup,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (dashboardGroup != null) {
      _result.dashboardGroup = dashboardGroup;
    }
    return _result;
  }
  factory GetDashboardGroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDashboardGroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDashboardGroupRequest clone() => GetDashboardGroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDashboardGroupRequest copyWith(void Function(GetDashboardGroupRequest) updates) => super.copyWith((message) => updates(message as GetDashboardGroupRequest)) as GetDashboardGroupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDashboardGroupRequest create() => GetDashboardGroupRequest._();
  GetDashboardGroupRequest createEmptyInstance() => create();
  static $pb.PbList<GetDashboardGroupRequest> createRepeated() => $pb.PbList<GetDashboardGroupRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDashboardGroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDashboardGroupRequest>(create);
  static GetDashboardGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scope => $_getSZ(0);
  @$pb.TagNumber(1)
  set scope($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dashboardGroup => $_getSZ(1);
  @$pb.TagNumber(2)
  set dashboardGroup($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDashboardGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearDashboardGroup() => clearField(2);
}

class GetDashboardGroupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDashboardGroupResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..pc<Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboards', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  GetDashboardGroupResponse._() : super();
  factory GetDashboardGroupResponse({
    $core.Iterable<Resource>? dashboards,
  }) {
    final _result = create();
    if (dashboards != null) {
      _result.dashboards.addAll(dashboards);
    }
    return _result;
  }
  factory GetDashboardGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDashboardGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDashboardGroupResponse clone() => GetDashboardGroupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDashboardGroupResponse copyWith(void Function(GetDashboardGroupResponse) updates) => super.copyWith((message) => updates(message as GetDashboardGroupResponse)) as GetDashboardGroupResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDashboardGroupResponse create() => GetDashboardGroupResponse._();
  GetDashboardGroupResponse createEmptyInstance() => create();
  static $pb.PbList<GetDashboardGroupResponse> createRepeated() => $pb.PbList<GetDashboardGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDashboardGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDashboardGroupResponse>(create);
  static GetDashboardGroupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get dashboards => $_getList(0);
}

class ListHeadersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListHeadersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboard')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tab')
    ..hasRequiredFields = false
  ;

  ListHeadersRequest._() : super();
  factory ListHeadersRequest({
    $core.String? scope,
    $core.String? dashboard,
    $core.String? tab,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (dashboard != null) {
      _result.dashboard = dashboard;
    }
    if (tab != null) {
      _result.tab = tab;
    }
    return _result;
  }
  factory ListHeadersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHeadersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHeadersRequest clone() => ListHeadersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHeadersRequest copyWith(void Function(ListHeadersRequest) updates) => super.copyWith((message) => updates(message as ListHeadersRequest)) as ListHeadersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHeadersRequest create() => ListHeadersRequest._();
  ListHeadersRequest createEmptyInstance() => create();
  static $pb.PbList<ListHeadersRequest> createRepeated() => $pb.PbList<ListHeadersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListHeadersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHeadersRequest>(create);
  static ListHeadersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scope => $_getSZ(0);
  @$pb.TagNumber(1)
  set scope($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dashboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set dashboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDashboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearDashboard() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tab => $_getSZ(2);
  @$pb.TagNumber(3)
  set tab($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTab() => $_has(2);
  @$pb.TagNumber(3)
  void clearTab() => clearField(3);
}

class ListHeadersResponse_Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListHeadersResponse.Header', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'build')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'started', subBuilder: $2.Timestamp.create)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotlistIds')
    ..hasRequiredFields = false
  ;

  ListHeadersResponse_Header._() : super();
  factory ListHeadersResponse_Header({
    $core.String? build,
    $core.String? name,
    $2.Timestamp? started,
    $core.Iterable<$core.String>? extra,
    $core.String? hotlistIds,
  }) {
    final _result = create();
    if (build != null) {
      _result.build = build;
    }
    if (name != null) {
      _result.name = name;
    }
    if (started != null) {
      _result.started = started;
    }
    if (extra != null) {
      _result.extra.addAll(extra);
    }
    if (hotlistIds != null) {
      _result.hotlistIds = hotlistIds;
    }
    return _result;
  }
  factory ListHeadersResponse_Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHeadersResponse_Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHeadersResponse_Header clone() => ListHeadersResponse_Header()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHeadersResponse_Header copyWith(void Function(ListHeadersResponse_Header) updates) => super.copyWith((message) => updates(message as ListHeadersResponse_Header)) as ListHeadersResponse_Header; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHeadersResponse_Header create() => ListHeadersResponse_Header._();
  ListHeadersResponse_Header createEmptyInstance() => create();
  static $pb.PbList<ListHeadersResponse_Header> createRepeated() => $pb.PbList<ListHeadersResponse_Header>();
  @$core.pragma('dart2js:noInline')
  static ListHeadersResponse_Header getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHeadersResponse_Header>(create);
  static ListHeadersResponse_Header? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get build => $_getSZ(0);
  @$pb.TagNumber(1)
  set build($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBuild() => $_has(0);
  @$pb.TagNumber(1)
  void clearBuild() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get started => $_getN(2);
  @$pb.TagNumber(3)
  set started($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStarted() => $_has(2);
  @$pb.TagNumber(3)
  void clearStarted() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureStarted() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get extra => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get hotlistIds => $_getSZ(4);
  @$pb.TagNumber(5)
  set hotlistIds($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHotlistIds() => $_has(4);
  @$pb.TagNumber(5)
  void clearHotlistIds() => clearField(5);
}

class ListHeadersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListHeadersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..pc<ListHeadersResponse_Header>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headers', $pb.PbFieldType.PM, subBuilder: ListHeadersResponse_Header.create)
    ..hasRequiredFields = false
  ;

  ListHeadersResponse._() : super();
  factory ListHeadersResponse({
    $core.Iterable<ListHeadersResponse_Header>? headers,
  }) {
    final _result = create();
    if (headers != null) {
      _result.headers.addAll(headers);
    }
    return _result;
  }
  factory ListHeadersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHeadersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHeadersResponse clone() => ListHeadersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHeadersResponse copyWith(void Function(ListHeadersResponse) updates) => super.copyWith((message) => updates(message as ListHeadersResponse)) as ListHeadersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListHeadersResponse create() => ListHeadersResponse._();
  ListHeadersResponse createEmptyInstance() => create();
  static $pb.PbList<ListHeadersResponse> createRepeated() => $pb.PbList<ListHeadersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListHeadersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHeadersResponse>(create);
  static ListHeadersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ListHeadersResponse_Header> get headers => $_getList(0);
}

class ListRowsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRowsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scope')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboard')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tab')
    ..hasRequiredFields = false
  ;

  ListRowsRequest._() : super();
  factory ListRowsRequest({
    $core.String? scope,
    $core.String? dashboard,
    $core.String? tab,
  }) {
    final _result = create();
    if (scope != null) {
      _result.scope = scope;
    }
    if (dashboard != null) {
      _result.dashboard = dashboard;
    }
    if (tab != null) {
      _result.tab = tab;
    }
    return _result;
  }
  factory ListRowsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRowsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRowsRequest clone() => ListRowsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRowsRequest copyWith(void Function(ListRowsRequest) updates) => super.copyWith((message) => updates(message as ListRowsRequest)) as ListRowsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRowsRequest create() => ListRowsRequest._();
  ListRowsRequest createEmptyInstance() => create();
  static $pb.PbList<ListRowsRequest> createRepeated() => $pb.PbList<ListRowsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRowsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRowsRequest>(create);
  static ListRowsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scope => $_getSZ(0);
  @$pb.TagNumber(1)
  set scope($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScope() => $_has(0);
  @$pb.TagNumber(1)
  void clearScope() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dashboard => $_getSZ(1);
  @$pb.TagNumber(2)
  set dashboard($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDashboard() => $_has(1);
  @$pb.TagNumber(2)
  void clearDashboard() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tab => $_getSZ(2);
  @$pb.TagNumber(3)
  set tab($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTab() => $_has(2);
  @$pb.TagNumber(3)
  void clearTab() => clearField(3);
}

class ListRowsResponse_Row extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRowsResponse.Row', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<ListRowsResponse_Cell>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cells', $pb.PbFieldType.PM, subBuilder: ListRowsResponse_Cell.create)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issues')
    ..aOM<$7.AlertInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alert', subBuilder: $7.AlertInfo.create)
    ..hasRequiredFields = false
  ;

  ListRowsResponse_Row._() : super();
  factory ListRowsResponse_Row({
    $core.String? name,
    $core.Iterable<ListRowsResponse_Cell>? cells,
    $core.Iterable<$core.String>? issues,
    $7.AlertInfo? alert,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (cells != null) {
      _result.cells.addAll(cells);
    }
    if (issues != null) {
      _result.issues.addAll(issues);
    }
    if (alert != null) {
      _result.alert = alert;
    }
    return _result;
  }
  factory ListRowsResponse_Row.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRowsResponse_Row.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRowsResponse_Row clone() => ListRowsResponse_Row()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRowsResponse_Row copyWith(void Function(ListRowsResponse_Row) updates) => super.copyWith((message) => updates(message as ListRowsResponse_Row)) as ListRowsResponse_Row; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRowsResponse_Row create() => ListRowsResponse_Row._();
  ListRowsResponse_Row createEmptyInstance() => create();
  static $pb.PbList<ListRowsResponse_Row> createRepeated() => $pb.PbList<ListRowsResponse_Row>();
  @$core.pragma('dart2js:noInline')
  static ListRowsResponse_Row getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRowsResponse_Row>(create);
  static ListRowsResponse_Row? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ListRowsResponse_Cell> get cells => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get issues => $_getList(2);

  @$pb.TagNumber(4)
  $7.AlertInfo get alert => $_getN(3);
  @$pb.TagNumber(4)
  set alert($7.AlertInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlert() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlert() => clearField(4);
  @$pb.TagNumber(4)
  $7.AlertInfo ensureAlert() => $_ensure(3);
}

class ListRowsResponse_Cell extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRowsResponse.Cell', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cellId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  ListRowsResponse_Cell._() : super();
  factory ListRowsResponse_Cell({
    $core.int? result,
    $core.String? cellId,
    $core.String? message,
    $core.String? icon,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    if (cellId != null) {
      _result.cellId = cellId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    return _result;
  }
  factory ListRowsResponse_Cell.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRowsResponse_Cell.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRowsResponse_Cell clone() => ListRowsResponse_Cell()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRowsResponse_Cell copyWith(void Function(ListRowsResponse_Cell) updates) => super.copyWith((message) => updates(message as ListRowsResponse_Cell)) as ListRowsResponse_Cell; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRowsResponse_Cell create() => ListRowsResponse_Cell._();
  ListRowsResponse_Cell createEmptyInstance() => create();
  static $pb.PbList<ListRowsResponse_Cell> createRepeated() => $pb.PbList<ListRowsResponse_Cell>();
  @$core.pragma('dart2js:noInline')
  static ListRowsResponse_Cell getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRowsResponse_Cell>(create);
  static ListRowsResponse_Cell? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(1)
  set result($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cellId => $_getSZ(1);
  @$pb.TagNumber(2)
  set cellId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCellId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCellId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => clearField(4);
}

class ListRowsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRowsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..pc<ListRowsResponse_Row>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rows', $pb.PbFieldType.PM, subBuilder: ListRowsResponse_Row.create)
    ..hasRequiredFields = false
  ;

  ListRowsResponse._() : super();
  factory ListRowsResponse({
    $core.Iterable<ListRowsResponse_Row>? rows,
  }) {
    final _result = create();
    if (rows != null) {
      _result.rows.addAll(rows);
    }
    return _result;
  }
  factory ListRowsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRowsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRowsResponse clone() => ListRowsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRowsResponse copyWith(void Function(ListRowsResponse) updates) => super.copyWith((message) => updates(message as ListRowsResponse)) as ListRowsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRowsResponse create() => ListRowsResponse._();
  ListRowsResponse createEmptyInstance() => create();
  static $pb.PbList<ListRowsResponse> createRepeated() => $pb.PbList<ListRowsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRowsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRowsResponse>(create);
  static ListRowsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ListRowsResponse_Row> get rows => $_getList(0);
}

class Resource extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Resource', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'testgrid.api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'link')
    ..hasRequiredFields = false
  ;

  Resource._() : super();
  factory Resource({
    $core.String? name,
    $core.String? link,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (link != null) {
      _result.link = link;
    }
    return _result;
  }
  factory Resource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Resource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Resource clone() => Resource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Resource copyWith(void Function(Resource) updates) => super.copyWith((message) => updates(message as Resource)) as Resource; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Resource create() => Resource._();
  Resource createEmptyInstance() => create();
  static $pb.PbList<Resource> createRepeated() => $pb.PbList<Resource>();
  @$core.pragma('dart2js:noInline')
  static Resource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Resource>(create);
  static Resource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get link => $_getSZ(1);
  @$pb.TagNumber(2)
  set link($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearLink() => clearField(2);
}

