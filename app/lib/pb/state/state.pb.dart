///
//  Generated code. Do not modify.
//  source: pb/state/state.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $2;
import '../config/config.pb.dart' as $5;

class Property extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Property', createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'property', entryClassName: 'Property.PropertyEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  Property._() : super();
  factory Property({
    $core.Map<$core.String, $core.String>? property,
  }) {
    final _result = create();
    if (property != null) {
      _result.property.addAll(property);
    }
    return _result;
  }
  factory Property.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Property.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Property clone() => Property()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Property copyWith(void Function(Property) updates) => super.copyWith((message) => updates(message as Property)) as Property; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Property create() => Property._();
  Property createEmptyInstance() => create();
  static $pb.PbList<Property> createRepeated() => $pb.PbList<Property>();
  @$core.pragma('dart2js:noInline')
  static Property getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Property>(create);
  static Property? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get property => $_getMap(0);
}

class Metric extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Metric', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indices', $pb.PbFieldType.K3)
    ..p<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  Metric._() : super();
  factory Metric({
    $core.String? name,
    $core.Iterable<$core.int>? indices,
    $core.Iterable<$core.double>? values,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (indices != null) {
      _result.indices.addAll(indices);
    }
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory Metric.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metric.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metric clone() => Metric()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metric copyWith(void Function(Metric) updates) => super.copyWith((message) => updates(message as Metric)) as Metric; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metric create() => Metric._();
  Metric createEmptyInstance() => create();
  static $pb.PbList<Metric> createRepeated() => $pb.PbList<Metric>();
  @$core.pragma('dart2js:noInline')
  static Metric getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metric>(create);
  static Metric? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get indices => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.double> get values => $_getList(2);
}

class UpdatePhaseData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePhaseData', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phaseName')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phaseSeconds', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  UpdatePhaseData._() : super();
  factory UpdatePhaseData({
    $core.String? phaseName,
    $core.double? phaseSeconds,
  }) {
    final _result = create();
    if (phaseName != null) {
      _result.phaseName = phaseName;
    }
    if (phaseSeconds != null) {
      _result.phaseSeconds = phaseSeconds;
    }
    return _result;
  }
  factory UpdatePhaseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePhaseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePhaseData clone() => UpdatePhaseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePhaseData copyWith(void Function(UpdatePhaseData) updates) => super.copyWith((message) => updates(message as UpdatePhaseData)) as UpdatePhaseData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePhaseData create() => UpdatePhaseData._();
  UpdatePhaseData createEmptyInstance() => create();
  static $pb.PbList<UpdatePhaseData> createRepeated() => $pb.PbList<UpdatePhaseData>();
  @$core.pragma('dart2js:noInline')
  static UpdatePhaseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePhaseData>(create);
  static UpdatePhaseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phaseName => $_getSZ(0);
  @$pb.TagNumber(1)
  set phaseName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhaseName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhaseName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get phaseSeconds => $_getN(1);
  @$pb.TagNumber(2)
  set phaseSeconds($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhaseSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhaseSeconds() => clearField(2);
}

class UpdateInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInfo', createEmptyInstance: create)
    ..pc<UpdatePhaseData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatePhaseData', $pb.PbFieldType.PM, subBuilder: UpdatePhaseData.create)
    ..hasRequiredFields = false
  ;

  UpdateInfo._() : super();
  factory UpdateInfo({
    $core.Iterable<UpdatePhaseData>? updatePhaseData,
  }) {
    final _result = create();
    if (updatePhaseData != null) {
      _result.updatePhaseData.addAll(updatePhaseData);
    }
    return _result;
  }
  factory UpdateInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInfo clone() => UpdateInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInfo copyWith(void Function(UpdateInfo) updates) => super.copyWith((message) => updates(message as UpdateInfo)) as UpdateInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInfo create() => UpdateInfo._();
  UpdateInfo createEmptyInstance() => create();
  static $pb.PbList<UpdateInfo> createRepeated() => $pb.PbList<UpdateInfo>();
  @$core.pragma('dart2js:noInline')
  static UpdateInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInfo>(create);
  static UpdateInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UpdatePhaseData> get updatePhaseData => $_getList(0);
}

class AlertInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlertInfo', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failCount', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failBuildId')
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failTime', subBuilder: $2.Timestamp.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failTestId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passBuildId')
    ..aOM<$2.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passTime', subBuilder: $2.Timestamp.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failureMessage')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildLink')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildLinkText')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildUrlText')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latestFailBuildId')
    ..m<$core.String, $core.String>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', entryClassName: 'AlertInfo.PropertiesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..pPS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotlistIds')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latestFailTestId')
    ..pPS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailAddresses')
    ..hasRequiredFields = false
  ;

  AlertInfo._() : super();
  factory AlertInfo({
    $core.int? failCount,
    $core.String? failBuildId,
    $2.Timestamp? failTime,
    $core.String? failTestId,
    $core.String? passBuildId,
    $2.Timestamp? passTime,
    $core.String? failureMessage,
    $core.String? buildLink,
    $core.String? buildLinkText,
    $core.String? buildUrlText,
    $core.String? latestFailBuildId,
    $core.Map<$core.String, $core.String>? properties,
    $core.Iterable<$core.String>? hotlistIds,
    $core.String? latestFailTestId,
    $core.Iterable<$core.String>? emailAddresses,
  }) {
    final _result = create();
    if (failCount != null) {
      _result.failCount = failCount;
    }
    if (failBuildId != null) {
      _result.failBuildId = failBuildId;
    }
    if (failTime != null) {
      _result.failTime = failTime;
    }
    if (failTestId != null) {
      _result.failTestId = failTestId;
    }
    if (passBuildId != null) {
      _result.passBuildId = passBuildId;
    }
    if (passTime != null) {
      _result.passTime = passTime;
    }
    if (failureMessage != null) {
      _result.failureMessage = failureMessage;
    }
    if (buildLink != null) {
      _result.buildLink = buildLink;
    }
    if (buildLinkText != null) {
      _result.buildLinkText = buildLinkText;
    }
    if (buildUrlText != null) {
      _result.buildUrlText = buildUrlText;
    }
    if (latestFailBuildId != null) {
      _result.latestFailBuildId = latestFailBuildId;
    }
    if (properties != null) {
      _result.properties.addAll(properties);
    }
    if (hotlistIds != null) {
      _result.hotlistIds.addAll(hotlistIds);
    }
    if (latestFailTestId != null) {
      _result.latestFailTestId = latestFailTestId;
    }
    if (emailAddresses != null) {
      _result.emailAddresses.addAll(emailAddresses);
    }
    return _result;
  }
  factory AlertInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlertInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlertInfo clone() => AlertInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlertInfo copyWith(void Function(AlertInfo) updates) => super.copyWith((message) => updates(message as AlertInfo)) as AlertInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlertInfo create() => AlertInfo._();
  AlertInfo createEmptyInstance() => create();
  static $pb.PbList<AlertInfo> createRepeated() => $pb.PbList<AlertInfo>();
  @$core.pragma('dart2js:noInline')
  static AlertInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlertInfo>(create);
  static AlertInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get failCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set failCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFailCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearFailCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get failBuildId => $_getSZ(1);
  @$pb.TagNumber(2)
  set failBuildId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailBuildId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailBuildId() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get failTime => $_getN(2);
  @$pb.TagNumber(3)
  set failTime($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFailTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearFailTime() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureFailTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get failTestId => $_getSZ(3);
  @$pb.TagNumber(4)
  set failTestId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFailTestId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailTestId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get passBuildId => $_getSZ(4);
  @$pb.TagNumber(5)
  set passBuildId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPassBuildId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPassBuildId() => clearField(5);

  @$pb.TagNumber(6)
  $2.Timestamp get passTime => $_getN(5);
  @$pb.TagNumber(6)
  set passTime($2.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPassTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearPassTime() => clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensurePassTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get failureMessage => $_getSZ(6);
  @$pb.TagNumber(7)
  set failureMessage($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFailureMessage() => $_has(6);
  @$pb.TagNumber(7)
  void clearFailureMessage() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get buildLink => $_getSZ(7);
  @$pb.TagNumber(8)
  set buildLink($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBuildLink() => $_has(7);
  @$pb.TagNumber(8)
  void clearBuildLink() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get buildLinkText => $_getSZ(8);
  @$pb.TagNumber(9)
  set buildLinkText($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBuildLinkText() => $_has(8);
  @$pb.TagNumber(9)
  void clearBuildLinkText() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get buildUrlText => $_getSZ(9);
  @$pb.TagNumber(10)
  set buildUrlText($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBuildUrlText() => $_has(9);
  @$pb.TagNumber(10)
  void clearBuildUrlText() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get latestFailBuildId => $_getSZ(10);
  @$pb.TagNumber(11)
  set latestFailBuildId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLatestFailBuildId() => $_has(10);
  @$pb.TagNumber(11)
  void clearLatestFailBuildId() => clearField(11);

  @$pb.TagNumber(12)
  $core.Map<$core.String, $core.String> get properties => $_getMap(11);

  @$pb.TagNumber(13)
  $core.List<$core.String> get hotlistIds => $_getList(12);

  @$pb.TagNumber(14)
  $core.String get latestFailTestId => $_getSZ(13);
  @$pb.TagNumber(14)
  set latestFailTestId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLatestFailTestId() => $_has(13);
  @$pb.TagNumber(14)
  void clearLatestFailTestId() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.String> get emailAddresses => $_getList(14);
}

class TestMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestMetadata', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testName')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bugComponent', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cc')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorType')
    ..hasRequiredFields = false
  ;

  TestMetadata._() : super();
  factory TestMetadata({
    $core.String? testName,
    $core.int? bugComponent,
    $core.String? owner,
    $core.Iterable<$core.String>? cc,
    $core.String? errorType,
  }) {
    final _result = create();
    if (testName != null) {
      _result.testName = testName;
    }
    if (bugComponent != null) {
      _result.bugComponent = bugComponent;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (cc != null) {
      _result.cc.addAll(cc);
    }
    if (errorType != null) {
      _result.errorType = errorType;
    }
    return _result;
  }
  factory TestMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMetadata clone() => TestMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMetadata copyWith(void Function(TestMetadata) updates) => super.copyWith((message) => updates(message as TestMetadata)) as TestMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestMetadata create() => TestMetadata._();
  TestMetadata createEmptyInstance() => create();
  static $pb.PbList<TestMetadata> createRepeated() => $pb.PbList<TestMetadata>();
  @$core.pragma('dart2js:noInline')
  static TestMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMetadata>(create);
  static TestMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get testName => $_getSZ(0);
  @$pb.TagNumber(1)
  set testName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTestName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTestName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bugComponent => $_getIZ(1);
  @$pb.TagNumber(2)
  set bugComponent($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBugComponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearBugComponent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get owner => $_getSZ(2);
  @$pb.TagNumber(3)
  set owner($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwner() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwner() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get cc => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get errorType => $_getSZ(4);
  @$pb.TagNumber(5)
  set errorType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasErrorType() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrorType() => clearField(5);
}

class Column extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Column', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'build')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'started', $pb.PbFieldType.OD)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotlistIds')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hint')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailAddresses')
    ..aOM<Stats>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stats', subBuilder: Stats.create)
    ..hasRequiredFields = false
  ;

  Column._() : super();
  factory Column({
    $core.String? build,
    $core.String? name,
    $core.double? started,
    $core.Iterable<$core.String>? extra,
    $core.String? hotlistIds,
    $core.String? hint,
    $core.Iterable<$core.String>? emailAddresses,
    Stats? stats,
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
    if (hint != null) {
      _result.hint = hint;
    }
    if (emailAddresses != null) {
      _result.emailAddresses.addAll(emailAddresses);
    }
    if (stats != null) {
      _result.stats = stats;
    }
    return _result;
  }
  factory Column.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Column.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Column clone() => Column()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Column copyWith(void Function(Column) updates) => super.copyWith((message) => updates(message as Column)) as Column; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Column create() => Column._();
  Column createEmptyInstance() => create();
  static $pb.PbList<Column> createRepeated() => $pb.PbList<Column>();
  @$core.pragma('dart2js:noInline')
  static Column getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Column>(create);
  static Column? _defaultInstance;

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
  $core.double get started => $_getN(2);
  @$pb.TagNumber(3)
  set started($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStarted() => $_has(2);
  @$pb.TagNumber(3)
  void clearStarted() => clearField(3);

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

  @$pb.TagNumber(6)
  $core.String get hint => $_getSZ(5);
  @$pb.TagNumber(6)
  set hint($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHint() => $_has(5);
  @$pb.TagNumber(6)
  void clearHint() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get emailAddresses => $_getList(6);

  @$pb.TagNumber(8)
  Stats get stats => $_getN(7);
  @$pb.TagNumber(8)
  set stats(Stats v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasStats() => $_has(7);
  @$pb.TagNumber(8)
  void clearStats() => clearField(8);
  @$pb.TagNumber(8)
  Stats ensureStats() => $_ensure(7);
}

class Stats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Stats', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failCount', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passCount', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCount', $pb.PbFieldType.O3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pending')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'broken')
    ..hasRequiredFields = false
  ;

  Stats._() : super();
  factory Stats({
    $core.int? failCount,
    $core.int? passCount,
    $core.int? totalCount,
    $core.bool? pending,
    $core.bool? broken,
  }) {
    final _result = create();
    if (failCount != null) {
      _result.failCount = failCount;
    }
    if (passCount != null) {
      _result.passCount = passCount;
    }
    if (totalCount != null) {
      _result.totalCount = totalCount;
    }
    if (pending != null) {
      _result.pending = pending;
    }
    if (broken != null) {
      _result.broken = broken;
    }
    return _result;
  }
  factory Stats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stats clone() => Stats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stats copyWith(void Function(Stats) updates) => super.copyWith((message) => updates(message as Stats)) as Stats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Stats create() => Stats._();
  Stats createEmptyInstance() => create();
  static $pb.PbList<Stats> createRepeated() => $pb.PbList<Stats>();
  @$core.pragma('dart2js:noInline')
  static Stats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stats>(create);
  static Stats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get failCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set failCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFailCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearFailCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get passCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set passCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get pending => $_getBF(3);
  @$pb.TagNumber(4)
  set pending($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPending() => $_has(3);
  @$pb.TagNumber(4)
  void clearPending() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get broken => $_getBF(4);
  @$pb.TagNumber(5)
  set broken($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBroken() => $_has(4);
  @$pb.TagNumber(5)
  void clearBroken() => clearField(5);
}

class Row extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Row', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', $pb.PbFieldType.K3)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cellIds')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metric')
    ..pc<Metric>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metrics', $pb.PbFieldType.PM, subBuilder: Metric.create)
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icons')
    ..pPS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'issues')
    ..aOM<AlertInfo>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertInfo', subBuilder: AlertInfo.create)
    ..pPS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userProperty')
    ..pc<Property>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: Property.create)
    ..hasRequiredFields = false
  ;

  Row._() : super();
  factory Row({
    $core.String? name,
    $core.String? id,
    $core.Iterable<$core.int>? results,
    $core.Iterable<$core.String>? cellIds,
    $core.Iterable<$core.String>? messages,
    $core.Iterable<$core.String>? metric,
    $core.Iterable<Metric>? metrics,
    $core.Iterable<$core.String>? icons,
    $core.Iterable<$core.String>? issues,
    AlertInfo? alertInfo,
    $core.Iterable<$core.String>? userProperty,
    $core.Iterable<Property>? properties,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (id != null) {
      _result.id = id;
    }
    if (results != null) {
      _result.results.addAll(results);
    }
    if (cellIds != null) {
      _result.cellIds.addAll(cellIds);
    }
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    if (metric != null) {
      _result.metric.addAll(metric);
    }
    if (metrics != null) {
      _result.metrics.addAll(metrics);
    }
    if (icons != null) {
      _result.icons.addAll(icons);
    }
    if (issues != null) {
      _result.issues.addAll(issues);
    }
    if (alertInfo != null) {
      _result.alertInfo = alertInfo;
    }
    if (userProperty != null) {
      _result.userProperty.addAll(userProperty);
    }
    if (properties != null) {
      _result.properties.addAll(properties);
    }
    return _result;
  }
  factory Row.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Row.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Row clone() => Row()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Row copyWith(void Function(Row) updates) => super.copyWith((message) => updates(message as Row)) as Row; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Row create() => Row._();
  Row createEmptyInstance() => create();
  static $pb.PbList<Row> createRepeated() => $pb.PbList<Row>();
  @$core.pragma('dart2js:noInline')
  static Row getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Row>(create);
  static Row? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get results => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get cellIds => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get messages => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<$core.String> get metric => $_getList(5);

  @$pb.TagNumber(8)
  $core.List<Metric> get metrics => $_getList(6);

  @$pb.TagNumber(9)
  $core.List<$core.String> get icons => $_getList(7);

  @$pb.TagNumber(10)
  $core.List<$core.String> get issues => $_getList(8);

  @$pb.TagNumber(11)
  AlertInfo get alertInfo => $_getN(9);
  @$pb.TagNumber(11)
  set alertInfo(AlertInfo v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasAlertInfo() => $_has(9);
  @$pb.TagNumber(11)
  void clearAlertInfo() => clearField(11);
  @$pb.TagNumber(11)
  AlertInfo ensureAlertInfo() => $_ensure(9);

  @$pb.TagNumber(12)
  $core.List<$core.String> get userProperty => $_getList(10);

  @$pb.TagNumber(13)
  $core.List<Property> get properties => $_getList(11);
}

class Grid extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Grid', createEmptyInstance: create)
    ..pc<Column>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'columns', $pb.PbFieldType.PM, subBuilder: Column.create)
    ..pc<Row>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rows', $pb.PbFieldType.PM, subBuilder: Row.create)
    ..aOM<$5.TestGroup>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: $5.TestGroup.create)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastTimeUpdated', $pb.PbFieldType.OD)
    ..pc<UpdateInfo>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateInfo', $pb.PbFieldType.PM, subBuilder: UpdateInfo.create)
    ..pc<TestMetadata>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testMetadata', $pb.PbFieldType.PM, subBuilder: TestMetadata.create)
    ..pc<Cluster>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cluster', $pb.PbFieldType.PM, subBuilder: Cluster.create)
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mostRecentClusterTimestamp', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Grid._() : super();
  factory Grid({
    $core.Iterable<Column>? columns,
    $core.Iterable<Row>? rows,
    $5.TestGroup? config,
    $core.double? lastTimeUpdated,
    $core.Iterable<UpdateInfo>? updateInfo,
    $core.Iterable<TestMetadata>? testMetadata,
    $core.Iterable<Cluster>? cluster,
    $core.double? mostRecentClusterTimestamp,
  }) {
    final _result = create();
    if (columns != null) {
      _result.columns.addAll(columns);
    }
    if (rows != null) {
      _result.rows.addAll(rows);
    }
    if (config != null) {
      _result.config = config;
    }
    if (lastTimeUpdated != null) {
      _result.lastTimeUpdated = lastTimeUpdated;
    }
    if (updateInfo != null) {
      _result.updateInfo.addAll(updateInfo);
    }
    if (testMetadata != null) {
      _result.testMetadata.addAll(testMetadata);
    }
    if (cluster != null) {
      _result.cluster.addAll(cluster);
    }
    if (mostRecentClusterTimestamp != null) {
      _result.mostRecentClusterTimestamp = mostRecentClusterTimestamp;
    }
    return _result;
  }
  factory Grid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Grid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Grid clone() => Grid()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Grid copyWith(void Function(Grid) updates) => super.copyWith((message) => updates(message as Grid)) as Grid; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Grid create() => Grid._();
  Grid createEmptyInstance() => create();
  static $pb.PbList<Grid> createRepeated() => $pb.PbList<Grid>();
  @$core.pragma('dart2js:noInline')
  static Grid getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Grid>(create);
  static Grid? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Column> get columns => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Row> get rows => $_getList(1);

  @$pb.TagNumber(4)
  $5.TestGroup get config => $_getN(2);
  @$pb.TagNumber(4)
  set config($5.TestGroup v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasConfig() => $_has(2);
  @$pb.TagNumber(4)
  void clearConfig() => clearField(4);
  @$pb.TagNumber(4)
  $5.TestGroup ensureConfig() => $_ensure(2);

  @$pb.TagNumber(6)
  $core.double get lastTimeUpdated => $_getN(3);
  @$pb.TagNumber(6)
  set lastTimeUpdated($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastTimeUpdated() => $_has(3);
  @$pb.TagNumber(6)
  void clearLastTimeUpdated() => clearField(6);

  @$pb.TagNumber(8)
  $core.List<UpdateInfo> get updateInfo => $_getList(4);

  @$pb.TagNumber(9)
  $core.List<TestMetadata> get testMetadata => $_getList(5);

  @$pb.TagNumber(10)
  $core.List<Cluster> get cluster => $_getList(6);

  @$pb.TagNumber(11)
  $core.double get mostRecentClusterTimestamp => $_getN(7);
  @$pb.TagNumber(11)
  set mostRecentClusterTimestamp($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasMostRecentClusterTimestamp() => $_has(7);
  @$pb.TagNumber(11)
  void clearMostRecentClusterTimestamp() => clearField(11);
}

class Cluster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Cluster', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testStatus', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<ClusterRow>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clusterRow', $pb.PbFieldType.PM, subBuilder: ClusterRow.create)
    ..hasRequiredFields = false
  ;

  Cluster._() : super();
  factory Cluster({
    $core.int? testStatus,
    $core.String? message,
    $core.Iterable<ClusterRow>? clusterRow,
  }) {
    final _result = create();
    if (testStatus != null) {
      _result.testStatus = testStatus;
    }
    if (message != null) {
      _result.message = message;
    }
    if (clusterRow != null) {
      _result.clusterRow.addAll(clusterRow);
    }
    return _result;
  }
  factory Cluster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cluster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cluster clone() => Cluster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cluster copyWith(void Function(Cluster) updates) => super.copyWith((message) => updates(message as Cluster)) as Cluster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cluster create() => Cluster._();
  Cluster createEmptyInstance() => create();
  static $pb.PbList<Cluster> createRepeated() => $pb.PbList<Cluster>();
  @$core.pragma('dart2js:noInline')
  static Cluster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cluster>(create);
  static Cluster? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get testStatus => $_getIZ(0);
  @$pb.TagNumber(1)
  set testStatus($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTestStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearTestStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ClusterRow> get clusterRow => $_getList(2);
}

class ClusterRow extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClusterRow', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  ClusterRow._() : super();
  factory ClusterRow({
    $core.String? displayName,
    $core.Iterable<$core.int>? index,
  }) {
    final _result = create();
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (index != null) {
      _result.index.addAll(index);
    }
    return _result;
  }
  factory ClusterRow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterRow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterRow clone() => ClusterRow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterRow copyWith(void Function(ClusterRow) updates) => super.copyWith((message) => updates(message as ClusterRow)) as ClusterRow; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClusterRow create() => ClusterRow._();
  ClusterRow createEmptyInstance() => create();
  static $pb.PbList<ClusterRow> createRepeated() => $pb.PbList<ClusterRow>();
  @$core.pragma('dart2js:noInline')
  static ClusterRow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterRow>(create);
  static ClusterRow? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get index => $_getList(1);
}

