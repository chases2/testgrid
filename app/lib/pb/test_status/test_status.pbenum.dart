///
//  Generated code. Do not modify.
//  source: pb/test_status/test_status.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TestStatus extends $pb.ProtobufEnum {
  static const TestStatus NO_RESULT = TestStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_RESULT');
  static const TestStatus PASS = TestStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASS');
  static const TestStatus PASS_WITH_ERRORS = TestStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASS_WITH_ERRORS');
  static const TestStatus PASS_WITH_SKIPS = TestStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASS_WITH_SKIPS');
  static const TestStatus RUNNING = TestStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RUNNING');
  static const TestStatus CATEGORIZED_ABORT = TestStatus._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CATEGORIZED_ABORT');
  static const TestStatus UNKNOWN = TestStatus._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const TestStatus CANCEL = TestStatus._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CANCEL');
  static const TestStatus BLOCKED = TestStatus._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLOCKED');
  static const TestStatus TIMED_OUT = TestStatus._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TIMED_OUT');
  static const TestStatus CATEGORIZED_FAIL = TestStatus._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CATEGORIZED_FAIL');
  static const TestStatus BUILD_FAIL = TestStatus._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUILD_FAIL');
  static const TestStatus FAIL = TestStatus._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAIL');
  static const TestStatus FLAKY = TestStatus._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLAKY');
  static const TestStatus TOOL_FAIL = TestStatus._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOOL_FAIL');
  static const TestStatus BUILD_PASSED = TestStatus._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUILD_PASSED');

  static const $core.List<TestStatus> values = <TestStatus> [
    NO_RESULT,
    PASS,
    PASS_WITH_ERRORS,
    PASS_WITH_SKIPS,
    RUNNING,
    CATEGORIZED_ABORT,
    UNKNOWN,
    CANCEL,
    BLOCKED,
    TIMED_OUT,
    CATEGORIZED_FAIL,
    BUILD_FAIL,
    FAIL,
    FLAKY,
    TOOL_FAIL,
    BUILD_PASSED,
  ];

  static final $core.Map<$core.int, TestStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestStatus? valueOf($core.int value) => _byValue[value];

  const TestStatus._($core.int v, $core.String n) : super(v, n);
}

