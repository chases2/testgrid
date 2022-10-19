///
//  Generated code. Do not modify.
//  source: pb/issue_state/issue_state.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use targetAndMethodsDescriptor instead')
const TargetAndMethods$json = const {
  '1': 'TargetAndMethods',
  '2': const [
    const {'1': 'target_name', '3': 1, '4': 1, '5': 9, '10': 'targetName'},
    const {'1': 'method_names', '3': 2, '4': 3, '5': 9, '10': 'methodNames'},
  ],
};

/// Descriptor for `TargetAndMethods`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List targetAndMethodsDescriptor = $convert.base64Decode('ChBUYXJnZXRBbmRNZXRob2RzEh8KC3RhcmdldF9uYW1lGAEgASgJUgp0YXJnZXROYW1lEiEKDG1ldGhvZF9uYW1lcxgCIAMoCVILbWV0aG9kTmFtZXM=');
@$core.Deprecated('Use issueInfoDescriptor instead')
const IssueInfo$json = const {
  '1': 'IssueInfo',
  '2': const [
    const {'1': 'issue_id', '3': 1, '4': 1, '5': 9, '10': 'issueId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'is_autobug', '3': 3, '4': 1, '5': 8, '10': 'isAutobug'},
    const {'1': 'is_flakiness_bug', '3': 8, '4': 1, '5': 8, '10': 'isFlakinessBug'},
    const {'1': 'last_modified', '3': 4, '4': 1, '5': 1, '10': 'lastModified'},
    const {'1': 'row_ids', '3': 5, '4': 3, '5': 9, '10': 'rowIds'},
    const {'1': 'run_ids', '3': 6, '4': 3, '5': 9, '10': 'runIds'},
    const {'1': 'targets_and_methods', '3': 7, '4': 3, '5': 11, '6': '.TargetAndMethods', '10': 'targetsAndMethods'},
  ],
};

/// Descriptor for `IssueInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueInfoDescriptor = $convert.base64Decode('CglJc3N1ZUluZm8SGQoIaXNzdWVfaWQYASABKAlSB2lzc3VlSWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEh0KCmlzX2F1dG9idWcYAyABKAhSCWlzQXV0b2J1ZxIoChBpc19mbGFraW5lc3NfYnVnGAggASgIUg5pc0ZsYWtpbmVzc0J1ZxIjCg1sYXN0X21vZGlmaWVkGAQgASgBUgxsYXN0TW9kaWZpZWQSFwoHcm93X2lkcxgFIAMoCVIGcm93SWRzEhcKB3J1bl9pZHMYBiADKAlSBnJ1bklkcxJBChN0YXJnZXRzX2FuZF9tZXRob2RzGAcgAygLMhEuVGFyZ2V0QW5kTWV0aG9kc1IRdGFyZ2V0c0FuZE1ldGhvZHM=');
@$core.Deprecated('Use issueStateDescriptor instead')
const IssueState$json = const {
  '1': 'IssueState',
  '2': const [
    const {'1': 'issue_info', '3': 1, '4': 3, '5': 11, '6': '.IssueInfo', '10': 'issueInfo'},
  ],
  '9': const [
    const {'1': 2, '2': 3},
    const {'1': 3, '2': 4},
  ],
};

/// Descriptor for `IssueState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueStateDescriptor = $convert.base64Decode('CgpJc3N1ZVN0YXRlEikKCmlzc3VlX2luZm8YASADKAsyCi5Jc3N1ZUluZm9SCWlzc3VlSW5mb0oECAIQA0oECAMQBA==');
