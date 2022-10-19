///
//  Generated code. Do not modify.
//  source: pb/custom_evaluator/custom_evaluator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ruleSetDescriptor instead')
const RuleSet$json = const {
  '1': 'RuleSet',
  '2': const [
    const {'1': 'rules', '3': 1, '4': 3, '5': 11, '6': '.Rule', '10': 'rules'},
  ],
};

/// Descriptor for `RuleSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ruleSetDescriptor = $convert.base64Decode('CgdSdWxlU2V0EhsKBXJ1bGVzGAEgAygLMgUuUnVsZVIFcnVsZXM=');
@$core.Deprecated('Use ruleDescriptor instead')
const Rule$json = const {
  '1': 'Rule',
  '2': const [
    const {'1': 'test_result_comparisons', '3': 1, '4': 3, '5': 11, '6': '.TestResultComparison', '10': 'testResultComparisons'},
    const {'1': 'computed_status', '3': 3, '4': 1, '5': 14, '6': '.TestStatus', '10': 'computedStatus'},
  ],
};

/// Descriptor for `Rule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ruleDescriptor = $convert.base64Decode('CgRSdWxlEk0KF3Rlc3RfcmVzdWx0X2NvbXBhcmlzb25zGAEgAygLMhUuVGVzdFJlc3VsdENvbXBhcmlzb25SFXRlc3RSZXN1bHRDb21wYXJpc29ucxI0Cg9jb21wdXRlZF9zdGF0dXMYAyABKA4yCy5UZXN0U3RhdHVzUg5jb21wdXRlZFN0YXR1cw==');
@$core.Deprecated('Use testResultComparisonDescriptor instead')
const TestResultComparison$json = const {
  '1': 'TestResultComparison',
  '2': const [
    const {'1': 'comparison', '3': 1, '4': 1, '5': 11, '6': '.Comparison', '10': 'comparison'},
    const {'1': 'property_key', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'propertyKey'},
    const {'1': 'test_result_field', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'testResultField'},
    const {'1': 'test_result_error_field', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'testResultErrorField'},
  ],
  '8': const [
    const {'1': 'test_result_info'},
  ],
};

/// Descriptor for `TestResultComparison`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testResultComparisonDescriptor = $convert.base64Decode('ChRUZXN0UmVzdWx0Q29tcGFyaXNvbhIrCgpjb21wYXJpc29uGAEgASgLMgsuQ29tcGFyaXNvblIKY29tcGFyaXNvbhIjCgxwcm9wZXJ0eV9rZXkYAiABKAlIAFILcHJvcGVydHlLZXkSLAoRdGVzdF9yZXN1bHRfZmllbGQYAyABKAlIAFIPdGVzdFJlc3VsdEZpZWxkEjcKF3Rlc3RfcmVzdWx0X2Vycm9yX2ZpZWxkGAQgASgJSABSFHRlc3RSZXN1bHRFcnJvckZpZWxkQhIKEHRlc3RfcmVzdWx0X2luZm8=');
@$core.Deprecated('Use comparisonDescriptor instead')
const Comparison$json = const {
  '1': 'Comparison',
  '2': const [
    const {'1': 'op', '3': 1, '4': 1, '5': 14, '6': '.Comparison.Operator', '10': 'op'},
    const {'1': 'string_value', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    const {'1': 'numerical_value', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'numericalValue'},
  ],
  '4': const [Comparison_Operator$json],
  '8': const [
    const {'1': 'comparison_value'},
  ],
};

@$core.Deprecated('Use comparisonDescriptor instead')
const Comparison_Operator$json = const {
  '1': 'Operator',
  '2': const [
    const {'1': 'OP_UNKNOWN', '2': 0},
    const {'1': 'OP_EQ', '2': 1},
    const {'1': 'OP_NE', '2': 2},
    const {'1': 'OP_LT', '2': 3},
    const {'1': 'OP_LE', '2': 4},
    const {'1': 'OP_GT', '2': 5},
    const {'1': 'OP_GE', '2': 6},
    const {'1': 'OP_REGEX', '2': 7},
    const {'1': 'OP_STARTS_WITH', '2': 8},
    const {'1': 'OP_CONTAINS', '2': 9},
  ],
};

/// Descriptor for `Comparison`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comparisonDescriptor = $convert.base64Decode('CgpDb21wYXJpc29uEiQKAm9wGAEgASgOMhQuQ29tcGFyaXNvbi5PcGVyYXRvclICb3ASIwoMc3RyaW5nX3ZhbHVlGAIgASgJSABSC3N0cmluZ1ZhbHVlEikKD251bWVyaWNhbF92YWx1ZRgDIAEoAUgAUg5udW1lcmljYWxWYWx1ZSKPAQoIT3BlcmF0b3ISDgoKT1BfVU5LTk9XThAAEgkKBU9QX0VREAESCQoFT1BfTkUQAhIJCgVPUF9MVBADEgkKBU9QX0xFEAQSCQoFT1BfR1QQBRIJCgVPUF9HRRAGEgwKCE9QX1JFR0VYEAcSEgoOT1BfU1RBUlRTX1dJVEgQCBIPCgtPUF9DT05UQUlOUxAJQhIKEGNvbXBhcmlzb25fdmFsdWU=');
