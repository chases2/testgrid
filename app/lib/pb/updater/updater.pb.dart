///
//  Generated code. Do not modify.
//  source: pb/updater/updater.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../config/config.pb.dart' as $5;
import '../summary/summary.pb.dart' as $6;
import '../state/state.pb.dart' as $7;

class DashboardTabIdentifier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DashboardTabIdentifier', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardName')
    ..aOM<$5.DashboardTab>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardTab', subBuilder: $5.DashboardTab.create)
    ..hasRequiredFields = false
  ;

  DashboardTabIdentifier._() : super();
  factory DashboardTabIdentifier({
    $core.String? dashboardName,
    $5.DashboardTab? dashboardTab,
  }) {
    final _result = create();
    if (dashboardName != null) {
      _result.dashboardName = dashboardName;
    }
    if (dashboardTab != null) {
      _result.dashboardTab = dashboardTab;
    }
    return _result;
  }
  factory DashboardTabIdentifier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardTabIdentifier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardTabIdentifier clone() => DashboardTabIdentifier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardTabIdentifier copyWith(void Function(DashboardTabIdentifier) updates) => super.copyWith((message) => updates(message as DashboardTabIdentifier)) as DashboardTabIdentifier; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DashboardTabIdentifier create() => DashboardTabIdentifier._();
  DashboardTabIdentifier createEmptyInstance() => create();
  static $pb.PbList<DashboardTabIdentifier> createRepeated() => $pb.PbList<DashboardTabIdentifier>();
  @$core.pragma('dart2js:noInline')
  static DashboardTabIdentifier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardTabIdentifier>(create);
  static DashboardTabIdentifier? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dashboardName => $_getSZ(0);
  @$pb.TagNumber(1)
  set dashboardName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDashboardName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDashboardName() => clearField(1);

  @$pb.TagNumber(2)
  $5.DashboardTab get dashboardTab => $_getN(1);
  @$pb.TagNumber(2)
  set dashboardTab($5.DashboardTab v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDashboardTab() => $_has(1);
  @$pb.TagNumber(2)
  void clearDashboardTab() => clearField(2);
  @$pb.TagNumber(2)
  $5.DashboardTab ensureDashboardTab() => $_ensure(1);
}

class UpdateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRequest', createEmptyInstance: create)
    ..aOM<$5.TestGroup>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testGroup', subBuilder: $5.TestGroup.create)
    ..pc<DashboardTabIdentifier>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardTabIdentifiers', $pb.PbFieldType.PM, subBuilder: DashboardTabIdentifier.create)
    ..hasRequiredFields = false
  ;

  UpdateRequest._() : super();
  factory UpdateRequest({
    $5.TestGroup? testGroup,
    $core.Iterable<DashboardTabIdentifier>? dashboardTabIdentifiers,
  }) {
    final _result = create();
    if (testGroup != null) {
      _result.testGroup = testGroup;
    }
    if (dashboardTabIdentifiers != null) {
      _result.dashboardTabIdentifiers.addAll(dashboardTabIdentifiers);
    }
    return _result;
  }
  factory UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $5.TestGroup get testGroup => $_getN(0);
  @$pb.TagNumber(1)
  set testGroup($5.TestGroup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTestGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearTestGroup() => clearField(1);
  @$pb.TagNumber(1)
  $5.TestGroup ensureTestGroup() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<DashboardTabIdentifier> get dashboardTabIdentifiers => $_getList(1);
}

class UpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTimeMillis', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputSizeBytes', $pb.PbFieldType.OU3)
    ..pc<$6.DashboardTabSummary>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardTabSummaries', $pb.PbFieldType.PM, subBuilder: $6.DashboardTabSummary.create)
    ..aOM<$7.UpdateInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateEntry', subBuilder: $7.UpdateInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateResponse._() : super();
  factory UpdateResponse({
    $core.int? updateTimeMillis,
    $core.int? outputSizeBytes,
    $core.Iterable<$6.DashboardTabSummary>? dashboardTabSummaries,
    $7.UpdateInfo? updateEntry,
  }) {
    final _result = create();
    if (updateTimeMillis != null) {
      _result.updateTimeMillis = updateTimeMillis;
    }
    if (outputSizeBytes != null) {
      _result.outputSizeBytes = outputSizeBytes;
    }
    if (dashboardTabSummaries != null) {
      _result.dashboardTabSummaries.addAll(dashboardTabSummaries);
    }
    if (updateEntry != null) {
      _result.updateEntry = updateEntry;
    }
    return _result;
  }
  factory UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get updateTimeMillis => $_getIZ(0);
  @$pb.TagNumber(1)
  set updateTimeMillis($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateTimeMillis() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateTimeMillis() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get outputSizeBytes => $_getIZ(1);
  @$pb.TagNumber(2)
  set outputSizeBytes($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutputSizeBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutputSizeBytes() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$6.DashboardTabSummary> get dashboardTabSummaries => $_getList(2);

  @$pb.TagNumber(4)
  $7.UpdateInfo get updateEntry => $_getN(3);
  @$pb.TagNumber(4)
  set updateEntry($7.UpdateInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateEntry() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateEntry() => clearField(4);
  @$pb.TagNumber(4)
  $7.UpdateInfo ensureUpdateEntry() => $_ensure(3);
}

