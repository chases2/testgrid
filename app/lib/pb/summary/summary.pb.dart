///
//  Generated code. Do not modify.
//  source: pb/summary/summary.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $2;

import 'summary.pbenum.dart';

export 'summary.pbenum.dart';

class FailingTestSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FailingTestSummary', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failBuildId')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failTimestamp', $pb.PbFieldType.OD)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passBuildId')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passTimestamp', $pb.PbFieldType.OD)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failCount', $pb.PbFieldType.O3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildLink')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildLinkText')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildUrlText')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failureMessage')
    ..pPS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkedBugs')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failTestLink')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latestFailBuildId')
    ..m<$core.String, $core.String>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', entryClassName: 'FailingTestSummary.PropertiesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..pPS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotlistIds')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latestFailTestLink')
    ..pPS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailAddresses')
    ..hasRequiredFields = false
  ;

  FailingTestSummary._() : super();
  factory FailingTestSummary({
    $core.String? displayName,
    $core.String? testName,
    $core.String? failBuildId,
    $core.double? failTimestamp,
    $core.String? passBuildId,
    $core.double? passTimestamp,
    $core.int? failCount,
    $core.String? buildLink,
    $core.String? buildLinkText,
    $core.String? buildUrlText,
    $core.String? failureMessage,
    $core.Iterable<$core.String>? linkedBugs,
    $core.String? failTestLink,
    $core.String? latestFailBuildId,
    $core.Map<$core.String, $core.String>? properties,
    $core.Iterable<$core.String>? hotlistIds,
    $core.String? latestFailTestLink,
    $core.Iterable<$core.String>? emailAddresses,
  }) {
    final _result = create();
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (testName != null) {
      _result.testName = testName;
    }
    if (failBuildId != null) {
      _result.failBuildId = failBuildId;
    }
    if (failTimestamp != null) {
      _result.failTimestamp = failTimestamp;
    }
    if (passBuildId != null) {
      _result.passBuildId = passBuildId;
    }
    if (passTimestamp != null) {
      _result.passTimestamp = passTimestamp;
    }
    if (failCount != null) {
      _result.failCount = failCount;
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
    if (failureMessage != null) {
      _result.failureMessage = failureMessage;
    }
    if (linkedBugs != null) {
      _result.linkedBugs.addAll(linkedBugs);
    }
    if (failTestLink != null) {
      _result.failTestLink = failTestLink;
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
    if (latestFailTestLink != null) {
      _result.latestFailTestLink = latestFailTestLink;
    }
    if (emailAddresses != null) {
      _result.emailAddresses.addAll(emailAddresses);
    }
    return _result;
  }
  factory FailingTestSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FailingTestSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FailingTestSummary clone() => FailingTestSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FailingTestSummary copyWith(void Function(FailingTestSummary) updates) => super.copyWith((message) => updates(message as FailingTestSummary)) as FailingTestSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FailingTestSummary create() => FailingTestSummary._();
  FailingTestSummary createEmptyInstance() => create();
  static $pb.PbList<FailingTestSummary> createRepeated() => $pb.PbList<FailingTestSummary>();
  @$core.pragma('dart2js:noInline')
  static FailingTestSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FailingTestSummary>(create);
  static FailingTestSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get testName => $_getSZ(1);
  @$pb.TagNumber(2)
  set testName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTestName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTestName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get failBuildId => $_getSZ(2);
  @$pb.TagNumber(3)
  set failBuildId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFailBuildId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFailBuildId() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get failTimestamp => $_getN(3);
  @$pb.TagNumber(4)
  set failTimestamp($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFailTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailTimestamp() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get passBuildId => $_getSZ(4);
  @$pb.TagNumber(5)
  set passBuildId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPassBuildId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPassBuildId() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get passTimestamp => $_getN(5);
  @$pb.TagNumber(6)
  set passTimestamp($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPassTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearPassTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get failCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set failCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFailCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearFailCount() => clearField(7);

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
  $core.String get failureMessage => $_getSZ(10);
  @$pb.TagNumber(11)
  set failureMessage($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFailureMessage() => $_has(10);
  @$pb.TagNumber(11)
  void clearFailureMessage() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.String> get linkedBugs => $_getList(11);

  @$pb.TagNumber(13)
  $core.String get failTestLink => $_getSZ(12);
  @$pb.TagNumber(13)
  set failTestLink($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFailTestLink() => $_has(12);
  @$pb.TagNumber(13)
  void clearFailTestLink() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get latestFailBuildId => $_getSZ(13);
  @$pb.TagNumber(14)
  set latestFailBuildId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLatestFailBuildId() => $_has(13);
  @$pb.TagNumber(14)
  void clearLatestFailBuildId() => clearField(14);

  @$pb.TagNumber(15)
  $core.Map<$core.String, $core.String> get properties => $_getMap(14);

  @$pb.TagNumber(16)
  $core.List<$core.String> get hotlistIds => $_getList(15);

  @$pb.TagNumber(17)
  $core.String get latestFailTestLink => $_getSZ(16);
  @$pb.TagNumber(17)
  set latestFailTestLink($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasLatestFailTestLink() => $_has(16);
  @$pb.TagNumber(17)
  void clearLatestFailTestLink() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.String> get emailAddresses => $_getList(17);
}

class TestInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestInfo', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalNonInfraRuns', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passedNonInfraRuns', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failedNonInfraRuns', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failedInfraRuns', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalRunsWithInfra', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otherRuns', $pb.PbFieldType.O3)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flakiness', $pb.PbFieldType.OF)
    ..e<TestInfo_Trend>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeFromLastInterval', $pb.PbFieldType.OE, defaultOrMaker: TestInfo_Trend.UNKNOWN, valueOf: TestInfo_Trend.valueOf, enumValues: TestInfo_Trend.values)
    ..p<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'previousFlakiness', $pb.PbFieldType.KF)
    ..m<$core.String, $core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'infraFailures', entryClassName: 'TestInfo.InfraFailuresEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TestInfo._() : super();
  factory TestInfo({
    $core.String? displayName,
    $core.int? totalNonInfraRuns,
    $core.int? passedNonInfraRuns,
    $core.int? failedNonInfraRuns,
    $core.int? failedInfraRuns,
    $core.int? totalRunsWithInfra,
    $core.int? otherRuns,
    $core.double? flakiness,
    TestInfo_Trend? changeFromLastInterval,
    $core.Iterable<$core.double>? previousFlakiness,
    $core.Map<$core.String, $core.int>? infraFailures,
  }) {
    final _result = create();
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (totalNonInfraRuns != null) {
      _result.totalNonInfraRuns = totalNonInfraRuns;
    }
    if (passedNonInfraRuns != null) {
      _result.passedNonInfraRuns = passedNonInfraRuns;
    }
    if (failedNonInfraRuns != null) {
      _result.failedNonInfraRuns = failedNonInfraRuns;
    }
    if (failedInfraRuns != null) {
      _result.failedInfraRuns = failedInfraRuns;
    }
    if (totalRunsWithInfra != null) {
      _result.totalRunsWithInfra = totalRunsWithInfra;
    }
    if (otherRuns != null) {
      _result.otherRuns = otherRuns;
    }
    if (flakiness != null) {
      _result.flakiness = flakiness;
    }
    if (changeFromLastInterval != null) {
      _result.changeFromLastInterval = changeFromLastInterval;
    }
    if (previousFlakiness != null) {
      _result.previousFlakiness.addAll(previousFlakiness);
    }
    if (infraFailures != null) {
      _result.infraFailures.addAll(infraFailures);
    }
    return _result;
  }
  factory TestInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestInfo clone() => TestInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestInfo copyWith(void Function(TestInfo) updates) => super.copyWith((message) => updates(message as TestInfo)) as TestInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestInfo create() => TestInfo._();
  TestInfo createEmptyInstance() => create();
  static $pb.PbList<TestInfo> createRepeated() => $pb.PbList<TestInfo>();
  @$core.pragma('dart2js:noInline')
  static TestInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestInfo>(create);
  static TestInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalNonInfraRuns => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalNonInfraRuns($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalNonInfraRuns() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalNonInfraRuns() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get passedNonInfraRuns => $_getIZ(2);
  @$pb.TagNumber(3)
  set passedNonInfraRuns($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassedNonInfraRuns() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassedNonInfraRuns() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get failedNonInfraRuns => $_getIZ(3);
  @$pb.TagNumber(4)
  set failedNonInfraRuns($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFailedNonInfraRuns() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailedNonInfraRuns() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get failedInfraRuns => $_getIZ(4);
  @$pb.TagNumber(5)
  set failedInfraRuns($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFailedInfraRuns() => $_has(4);
  @$pb.TagNumber(5)
  void clearFailedInfraRuns() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalRunsWithInfra => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalRunsWithInfra($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalRunsWithInfra() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalRunsWithInfra() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get otherRuns => $_getIZ(6);
  @$pb.TagNumber(7)
  set otherRuns($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOtherRuns() => $_has(6);
  @$pb.TagNumber(7)
  void clearOtherRuns() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get flakiness => $_getN(7);
  @$pb.TagNumber(8)
  set flakiness($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFlakiness() => $_has(7);
  @$pb.TagNumber(8)
  void clearFlakiness() => clearField(8);

  @$pb.TagNumber(9)
  TestInfo_Trend get changeFromLastInterval => $_getN(8);
  @$pb.TagNumber(9)
  set changeFromLastInterval(TestInfo_Trend v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasChangeFromLastInterval() => $_has(8);
  @$pb.TagNumber(9)
  void clearChangeFromLastInterval() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.double> get previousFlakiness => $_getList(9);

  @$pb.TagNumber(11)
  $core.Map<$core.String, $core.int> get infraFailures => $_getMap(10);
}

class HealthinessInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HealthinessInfo', createEmptyInstance: create)
    ..aOM<$2.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end', subBuilder: $2.Timestamp.create)
    ..pc<TestInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tests', $pb.PbFieldType.PM, subBuilder: TestInfo.create)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'averageFlakiness', $pb.PbFieldType.OF)
    ..p<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'previousFlakiness', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  HealthinessInfo._() : super();
  factory HealthinessInfo({
    $2.Timestamp? start,
    $2.Timestamp? end,
    $core.Iterable<TestInfo>? tests,
    $core.double? averageFlakiness,
    $core.Iterable<$core.double>? previousFlakiness,
  }) {
    final _result = create();
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    if (tests != null) {
      _result.tests.addAll(tests);
    }
    if (averageFlakiness != null) {
      _result.averageFlakiness = averageFlakiness;
    }
    if (previousFlakiness != null) {
      _result.previousFlakiness.addAll(previousFlakiness);
    }
    return _result;
  }
  factory HealthinessInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthinessInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthinessInfo clone() => HealthinessInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthinessInfo copyWith(void Function(HealthinessInfo) updates) => super.copyWith((message) => updates(message as HealthinessInfo)) as HealthinessInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HealthinessInfo create() => HealthinessInfo._();
  HealthinessInfo createEmptyInstance() => create();
  static $pb.PbList<HealthinessInfo> createRepeated() => $pb.PbList<HealthinessInfo>();
  @$core.pragma('dart2js:noInline')
  static HealthinessInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthinessInfo>(create);
  static HealthinessInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get start => $_getN(0);
  @$pb.TagNumber(1)
  set start($2.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureStart() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Timestamp get end => $_getN(1);
  @$pb.TagNumber(2)
  set end($2.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureEnd() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<TestInfo> get tests => $_getList(2);

  @$pb.TagNumber(4)
  $core.double get averageFlakiness => $_getN(3);
  @$pb.TagNumber(4)
  set averageFlakiness($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAverageFlakiness() => $_has(3);
  @$pb.TagNumber(4)
  void clearAverageFlakiness() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.double> get previousFlakiness => $_getList(4);
}

class AlertingData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlertingData', createEmptyInstance: create)
    ..aOM<$2.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastEmailTime', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AlertingData._() : super();
  factory AlertingData({
    $2.Timestamp? lastEmailTime,
  }) {
    final _result = create();
    if (lastEmailTime != null) {
      _result.lastEmailTime = lastEmailTime;
    }
    return _result;
  }
  factory AlertingData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlertingData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlertingData clone() => AlertingData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlertingData copyWith(void Function(AlertingData) updates) => super.copyWith((message) => updates(message as AlertingData)) as AlertingData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlertingData create() => AlertingData._();
  AlertingData createEmptyInstance() => create();
  static $pb.PbList<AlertingData> createRepeated() => $pb.PbList<AlertingData>();
  @$core.pragma('dart2js:noInline')
  static AlertingData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlertingData>(create);
  static AlertingData? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get lastEmailTime => $_getN(0);
  @$pb.TagNumber(1)
  set lastEmailTime($2.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastEmailTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastEmailTime() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureLastEmailTime() => $_ensure(0);
}

class DashboardTabSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DashboardTabSummary', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardTabName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alert')
    ..pc<FailingTestSummary>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failingTestSummaries', $pb.PbFieldType.PM, subBuilder: FailingTestSummary.create)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdateTimestamp', $pb.PbFieldType.OD)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..e<DashboardTabSummary_TabStatus>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overallStatus', $pb.PbFieldType.OE, defaultOrMaker: DashboardTabSummary_TabStatus.NOT_SET, valueOf: DashboardTabSummary_TabStatus.valueOf, enumValues: DashboardTabSummary_TabStatus.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latestGreen')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRunTimestamp', $pb.PbFieldType.OD)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bugUrl')
    ..aOM<HealthinessInfo>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthiness', subBuilder: HealthinessInfo.create)
    ..pPS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkedIssues')
    ..aOM<AlertingData>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertingData', subBuilder: AlertingData.create)
    ..hasRequiredFields = false
  ;

  DashboardTabSummary._() : super();
  factory DashboardTabSummary({
    $core.String? dashboardName,
    $core.String? dashboardTabName,
    $core.String? alert,
    $core.Iterable<FailingTestSummary>? failingTestSummaries,
    $core.double? lastUpdateTimestamp,
    $core.String? status,
    DashboardTabSummary_TabStatus? overallStatus,
    $core.String? latestGreen,
    $core.double? lastRunTimestamp,
    $core.String? bugUrl,
    HealthinessInfo? healthiness,
    $core.Iterable<$core.String>? linkedIssues,
    AlertingData? alertingData,
  }) {
    final _result = create();
    if (dashboardName != null) {
      _result.dashboardName = dashboardName;
    }
    if (dashboardTabName != null) {
      _result.dashboardTabName = dashboardTabName;
    }
    if (alert != null) {
      _result.alert = alert;
    }
    if (failingTestSummaries != null) {
      _result.failingTestSummaries.addAll(failingTestSummaries);
    }
    if (lastUpdateTimestamp != null) {
      _result.lastUpdateTimestamp = lastUpdateTimestamp;
    }
    if (status != null) {
      _result.status = status;
    }
    if (overallStatus != null) {
      _result.overallStatus = overallStatus;
    }
    if (latestGreen != null) {
      _result.latestGreen = latestGreen;
    }
    if (lastRunTimestamp != null) {
      _result.lastRunTimestamp = lastRunTimestamp;
    }
    if (bugUrl != null) {
      _result.bugUrl = bugUrl;
    }
    if (healthiness != null) {
      _result.healthiness = healthiness;
    }
    if (linkedIssues != null) {
      _result.linkedIssues.addAll(linkedIssues);
    }
    if (alertingData != null) {
      _result.alertingData = alertingData;
    }
    return _result;
  }
  factory DashboardTabSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardTabSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardTabSummary clone() => DashboardTabSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardTabSummary copyWith(void Function(DashboardTabSummary) updates) => super.copyWith((message) => updates(message as DashboardTabSummary)) as DashboardTabSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DashboardTabSummary create() => DashboardTabSummary._();
  DashboardTabSummary createEmptyInstance() => create();
  static $pb.PbList<DashboardTabSummary> createRepeated() => $pb.PbList<DashboardTabSummary>();
  @$core.pragma('dart2js:noInline')
  static DashboardTabSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardTabSummary>(create);
  static DashboardTabSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dashboardName => $_getSZ(0);
  @$pb.TagNumber(1)
  set dashboardName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDashboardName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDashboardName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dashboardTabName => $_getSZ(1);
  @$pb.TagNumber(2)
  set dashboardTabName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDashboardTabName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDashboardTabName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get alert => $_getSZ(2);
  @$pb.TagNumber(3)
  set alert($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlert() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlert() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<FailingTestSummary> get failingTestSummaries => $_getList(3);

  @$pb.TagNumber(5)
  $core.double get lastUpdateTimestamp => $_getN(4);
  @$pb.TagNumber(5)
  set lastUpdateTimestamp($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastUpdateTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastUpdateTimestamp() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(5);
  @$pb.TagNumber(6)
  set status($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  DashboardTabSummary_TabStatus get overallStatus => $_getN(6);
  @$pb.TagNumber(7)
  set overallStatus(DashboardTabSummary_TabStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOverallStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearOverallStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get latestGreen => $_getSZ(7);
  @$pb.TagNumber(8)
  set latestGreen($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLatestGreen() => $_has(7);
  @$pb.TagNumber(8)
  void clearLatestGreen() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get lastRunTimestamp => $_getN(8);
  @$pb.TagNumber(9)
  set lastRunTimestamp($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastRunTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastRunTimestamp() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get bugUrl => $_getSZ(9);
  @$pb.TagNumber(10)
  set bugUrl($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBugUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearBugUrl() => clearField(10);

  @$pb.TagNumber(12)
  HealthinessInfo get healthiness => $_getN(10);
  @$pb.TagNumber(12)
  set healthiness(HealthinessInfo v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasHealthiness() => $_has(10);
  @$pb.TagNumber(12)
  void clearHealthiness() => clearField(12);
  @$pb.TagNumber(12)
  HealthinessInfo ensureHealthiness() => $_ensure(10);

  @$pb.TagNumber(13)
  $core.List<$core.String> get linkedIssues => $_getList(11);

  @$pb.TagNumber(14)
  AlertingData get alertingData => $_getN(12);
  @$pb.TagNumber(14)
  set alertingData(AlertingData v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasAlertingData() => $_has(12);
  @$pb.TagNumber(14)
  void clearAlertingData() => clearField(14);
  @$pb.TagNumber(14)
  AlertingData ensureAlertingData() => $_ensure(12);
}

class DashboardSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DashboardSummary', createEmptyInstance: create)
    ..pc<DashboardTabSummary>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tabSummaries', $pb.PbFieldType.PM, subBuilder: DashboardTabSummary.create)
    ..hasRequiredFields = false
  ;

  DashboardSummary._() : super();
  factory DashboardSummary({
    $core.Iterable<DashboardTabSummary>? tabSummaries,
  }) {
    final _result = create();
    if (tabSummaries != null) {
      _result.tabSummaries.addAll(tabSummaries);
    }
    return _result;
  }
  factory DashboardSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardSummary clone() => DashboardSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardSummary copyWith(void Function(DashboardSummary) updates) => super.copyWith((message) => updates(message as DashboardSummary)) as DashboardSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DashboardSummary create() => DashboardSummary._();
  DashboardSummary createEmptyInstance() => create();
  static $pb.PbList<DashboardSummary> createRepeated() => $pb.PbList<DashboardSummary>();
  @$core.pragma('dart2js:noInline')
  static DashboardSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardSummary>(create);
  static DashboardSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DashboardTabSummary> get tabSummaries => $_getList(0);
}

