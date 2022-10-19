///
//  Generated code. Do not modify.
//  source: pb/summary/summary.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TestInfo_Trend extends $pb.ProtobufEnum {
  static const TestInfo_Trend UNKNOWN = TestInfo_Trend._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const TestInfo_Trend NO_CHANGE = TestInfo_Trend._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_CHANGE');
  static const TestInfo_Trend UP = TestInfo_Trend._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UP');
  static const TestInfo_Trend DOWN = TestInfo_Trend._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOWN');

  static const $core.List<TestInfo_Trend> values = <TestInfo_Trend> [
    UNKNOWN,
    NO_CHANGE,
    UP,
    DOWN,
  ];

  static final $core.Map<$core.int, TestInfo_Trend> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestInfo_Trend? valueOf($core.int value) => _byValue[value];

  const TestInfo_Trend._($core.int v, $core.String n) : super(v, n);
}

class DashboardTabSummary_TabStatus extends $pb.ProtobufEnum {
  static const DashboardTabSummary_TabStatus NOT_SET = DashboardTabSummary_TabStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_SET');
  static const DashboardTabSummary_TabStatus UNKNOWN = DashboardTabSummary_TabStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const DashboardTabSummary_TabStatus PASS = DashboardTabSummary_TabStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASS');
  static const DashboardTabSummary_TabStatus FAIL = DashboardTabSummary_TabStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAIL');
  static const DashboardTabSummary_TabStatus FLAKY = DashboardTabSummary_TabStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLAKY');
  static const DashboardTabSummary_TabStatus STALE = DashboardTabSummary_TabStatus._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STALE');
  static const DashboardTabSummary_TabStatus BROKEN = DashboardTabSummary_TabStatus._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BROKEN');

  static const $core.List<DashboardTabSummary_TabStatus> values = <DashboardTabSummary_TabStatus> [
    NOT_SET,
    UNKNOWN,
    PASS,
    FAIL,
    FLAKY,
    STALE,
    BROKEN,
  ];

  static final $core.Map<$core.int, DashboardTabSummary_TabStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DashboardTabSummary_TabStatus? valueOf($core.int value) => _byValue[value];

  const DashboardTabSummary_TabStatus._($core.int v, $core.String n) : super(v, n);
}

