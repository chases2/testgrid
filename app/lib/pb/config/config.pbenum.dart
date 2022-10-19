///
//  Generated code. Do not modify.
//  source: pb/config/config.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TestGroup_TestsName extends $pb.ProtobufEnum {
  static const TestGroup_TestsName TESTS_NAME_UNSPECIFIED = TestGroup_TestsName._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TESTS_NAME_UNSPECIFIED');
  static const TestGroup_TestsName TESTS_NAME_IGNORE = TestGroup_TestsName._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TESTS_NAME_IGNORE');
  static const TestGroup_TestsName TESTS_NAME_REPLACE = TestGroup_TestsName._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TESTS_NAME_REPLACE');
  static const TestGroup_TestsName TESTS_NAME_APPEND = TestGroup_TestsName._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TESTS_NAME_APPEND');

  static const $core.List<TestGroup_TestsName> values = <TestGroup_TestsName> [
    TESTS_NAME_UNSPECIFIED,
    TESTS_NAME_IGNORE,
    TESTS_NAME_REPLACE,
    TESTS_NAME_APPEND,
  ];

  static final $core.Map<$core.int, TestGroup_TestsName> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestGroup_TestsName? valueOf($core.int value) => _byValue[value];

  const TestGroup_TestsName._($core.int v, $core.String n) : super(v, n);
}

class TestGroup_FallbackGrouping extends $pb.ProtobufEnum {
  static const TestGroup_FallbackGrouping FALLBACK_GROUPING_NONE = TestGroup_FallbackGrouping._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FALLBACK_GROUPING_NONE');
  static const TestGroup_FallbackGrouping FALLBACK_GROUPING_DATE = TestGroup_FallbackGrouping._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FALLBACK_GROUPING_DATE');
  static const TestGroup_FallbackGrouping FALLBACK_GROUPING_LABELS = TestGroup_FallbackGrouping._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FALLBACK_GROUPING_LABELS');
  static const TestGroup_FallbackGrouping FALLBACK_GROUPING_ID = TestGroup_FallbackGrouping._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FALLBACK_GROUPING_ID');
  static const TestGroup_FallbackGrouping FALLBACK_GROUPING_BUILD = TestGroup_FallbackGrouping._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FALLBACK_GROUPING_BUILD');
  static const TestGroup_FallbackGrouping FALLBACK_GROUPING_CONFIGURATION_VALUE = TestGroup_FallbackGrouping._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FALLBACK_GROUPING_CONFIGURATION_VALUE');

  static const $core.List<TestGroup_FallbackGrouping> values = <TestGroup_FallbackGrouping> [
    FALLBACK_GROUPING_NONE,
    FALLBACK_GROUPING_DATE,
    FALLBACK_GROUPING_LABELS,
    FALLBACK_GROUPING_ID,
    FALLBACK_GROUPING_BUILD,
    FALLBACK_GROUPING_CONFIGURATION_VALUE,
  ];

  static final $core.Map<$core.int, TestGroup_FallbackGrouping> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestGroup_FallbackGrouping? valueOf($core.int value) => _byValue[value];

  const TestGroup_FallbackGrouping._($core.int v, $core.String n) : super(v, n);
}

class TestGroup_PrimaryGrouping extends $pb.ProtobufEnum {
  static const TestGroup_PrimaryGrouping PRIMARY_GROUPING_NONE = TestGroup_PrimaryGrouping._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRIMARY_GROUPING_NONE');
  static const TestGroup_PrimaryGrouping PRIMARY_GROUPING_BUILD = TestGroup_PrimaryGrouping._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRIMARY_GROUPING_BUILD');

  static const $core.List<TestGroup_PrimaryGrouping> values = <TestGroup_PrimaryGrouping> [
    PRIMARY_GROUPING_NONE,
    PRIMARY_GROUPING_BUILD,
  ];

  static final $core.Map<$core.int, TestGroup_PrimaryGrouping> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestGroup_PrimaryGrouping? valueOf($core.int value) => _byValue[value];

  const TestGroup_PrimaryGrouping._($core.int v, $core.String n) : super(v, n);
}

class AutoBugOptions_Priority extends $pb.ProtobufEnum {
  static const AutoBugOptions_Priority PRIORITY_UNSPECIFIED = AutoBugOptions_Priority._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRIORITY_UNSPECIFIED');
  static const AutoBugOptions_Priority P0 = AutoBugOptions_Priority._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'P0');
  static const AutoBugOptions_Priority P1 = AutoBugOptions_Priority._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'P1');
  static const AutoBugOptions_Priority P2 = AutoBugOptions_Priority._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'P2');
  static const AutoBugOptions_Priority P3 = AutoBugOptions_Priority._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'P3');
  static const AutoBugOptions_Priority P4 = AutoBugOptions_Priority._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'P4');

  static const $core.List<AutoBugOptions_Priority> values = <AutoBugOptions_Priority> [
    PRIORITY_UNSPECIFIED,
    P0,
    P1,
    P2,
    P3,
    P4,
  ];

  static final $core.Map<$core.int, AutoBugOptions_Priority> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AutoBugOptions_Priority? valueOf($core.int value) => _byValue[value];

  const AutoBugOptions_Priority._($core.int v, $core.String n) : super(v, n);
}

