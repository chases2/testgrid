///
//  Generated code. Do not modify.
//  source: pb/issue_state/issue_state.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TargetAndMethods extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TargetAndMethods', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetName')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'methodNames')
    ..hasRequiredFields = false
  ;

  TargetAndMethods._() : super();
  factory TargetAndMethods({
    $core.String? targetName,
    $core.Iterable<$core.String>? methodNames,
  }) {
    final _result = create();
    if (targetName != null) {
      _result.targetName = targetName;
    }
    if (methodNames != null) {
      _result.methodNames.addAll(methodNames);
    }
    return _result;
  }
  factory TargetAndMethods.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TargetAndMethods.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TargetAndMethods clone() => TargetAndMethods()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TargetAndMethods copyWith(void Function(TargetAndMethods) updates) => super.copyWith((message) => updates(message as TargetAndMethods)) as TargetAndMethods; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TargetAndMethods create() => TargetAndMethods._();
  TargetAndMethods createEmptyInstance() => create();
  static $pb.PbList<TargetAndMethods> createRepeated() => $pb.PbList<TargetAndMethods>();
  @$core.pragma('dart2js:noInline')
  static TargetAndMethods getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TargetAndMethods>(create);
  static TargetAndMethods? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get methodNames => $_getList(1);
}

class IssueInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IssueInfo', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issueId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAutobug')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastModified', $pb.PbFieldType.OD)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rowIds')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'runIds')
    ..pc<TargetAndMethods>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetsAndMethods', $pb.PbFieldType.PM, subBuilder: TargetAndMethods.create)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFlakinessBug')
    ..hasRequiredFields = false
  ;

  IssueInfo._() : super();
  factory IssueInfo({
    $core.String? issueId,
    $core.String? title,
    $core.bool? isAutobug,
    $core.double? lastModified,
    $core.Iterable<$core.String>? rowIds,
    $core.Iterable<$core.String>? runIds,
    $core.Iterable<TargetAndMethods>? targetsAndMethods,
    $core.bool? isFlakinessBug,
  }) {
    final _result = create();
    if (issueId != null) {
      _result.issueId = issueId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (isAutobug != null) {
      _result.isAutobug = isAutobug;
    }
    if (lastModified != null) {
      _result.lastModified = lastModified;
    }
    if (rowIds != null) {
      _result.rowIds.addAll(rowIds);
    }
    if (runIds != null) {
      _result.runIds.addAll(runIds);
    }
    if (targetsAndMethods != null) {
      _result.targetsAndMethods.addAll(targetsAndMethods);
    }
    if (isFlakinessBug != null) {
      _result.isFlakinessBug = isFlakinessBug;
    }
    return _result;
  }
  factory IssueInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IssueInfo clone() => IssueInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IssueInfo copyWith(void Function(IssueInfo) updates) => super.copyWith((message) => updates(message as IssueInfo)) as IssueInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueInfo create() => IssueInfo._();
  IssueInfo createEmptyInstance() => create();
  static $pb.PbList<IssueInfo> createRepeated() => $pb.PbList<IssueInfo>();
  @$core.pragma('dart2js:noInline')
  static IssueInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IssueInfo>(create);
  static IssueInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get issueId => $_getSZ(0);
  @$pb.TagNumber(1)
  set issueId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIssueId() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssueId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isAutobug => $_getBF(2);
  @$pb.TagNumber(3)
  set isAutobug($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsAutobug() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAutobug() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get lastModified => $_getN(3);
  @$pb.TagNumber(4)
  set lastModified($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastModified() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastModified() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get rowIds => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get runIds => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<TargetAndMethods> get targetsAndMethods => $_getList(6);

  @$pb.TagNumber(8)
  $core.bool get isFlakinessBug => $_getBF(7);
  @$pb.TagNumber(8)
  set isFlakinessBug($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsFlakinessBug() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsFlakinessBug() => clearField(8);
}

class IssueState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IssueState', createEmptyInstance: create)
    ..pc<IssueInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issueInfo', $pb.PbFieldType.PM, subBuilder: IssueInfo.create)
    ..hasRequiredFields = false
  ;

  IssueState._() : super();
  factory IssueState({
    $core.Iterable<IssueInfo>? issueInfo,
  }) {
    final _result = create();
    if (issueInfo != null) {
      _result.issueInfo.addAll(issueInfo);
    }
    return _result;
  }
  factory IssueState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IssueState clone() => IssueState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IssueState copyWith(void Function(IssueState) updates) => super.copyWith((message) => updates(message as IssueState)) as IssueState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueState create() => IssueState._();
  IssueState createEmptyInstance() => create();
  static $pb.PbList<IssueState> createRepeated() => $pb.PbList<IssueState>();
  @$core.pragma('dart2js:noInline')
  static IssueState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IssueState>(create);
  static IssueState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<IssueInfo> get issueInfo => $_getList(0);
}

