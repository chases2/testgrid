///
//  Generated code. Do not modify.
//  source: pb/config/config.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use testNameConfigDescriptor instead')
const TestNameConfig$json = const {
  '1': 'TestNameConfig',
  '2': const [
    const {'1': 'name_elements', '3': 1, '4': 3, '5': 11, '6': '.TestNameConfig.NameElement', '10': 'nameElements'},
    const {'1': 'name_format', '3': 2, '4': 1, '5': 9, '10': 'nameFormat'},
  ],
  '3': const [TestNameConfig_NameElement$json],
};

@$core.Deprecated('Use testNameConfigDescriptor instead')
const TestNameConfig_NameElement$json = const {
  '1': 'NameElement',
  '2': const [
    const {'1': 'labels', '3': 1, '4': 1, '5': 9, '10': 'labels'},
    const {'1': 'target_config', '3': 2, '4': 1, '5': 9, '10': 'targetConfig'},
    const {'1': 'build_target', '3': 3, '4': 1, '5': 8, '10': 'buildTarget'},
    const {'1': 'tags', '3': 4, '4': 1, '5': 9, '10': 'tags'},
    const {'1': 'test_property', '3': 5, '4': 1, '5': 9, '10': 'testProperty'},
  ],
};

/// Descriptor for `TestNameConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testNameConfigDescriptor = $convert.base64Decode('Cg5UZXN0TmFtZUNvbmZpZxJACg1uYW1lX2VsZW1lbnRzGAEgAygLMhsuVGVzdE5hbWVDb25maWcuTmFtZUVsZW1lbnRSDG5hbWVFbGVtZW50cxIfCgtuYW1lX2Zvcm1hdBgCIAEoCVIKbmFtZUZvcm1hdBqmAQoLTmFtZUVsZW1lbnQSFgoGbGFiZWxzGAEgASgJUgZsYWJlbHMSIwoNdGFyZ2V0X2NvbmZpZxgCIAEoCVIMdGFyZ2V0Q29uZmlnEiEKDGJ1aWxkX3RhcmdldBgDIAEoCFILYnVpbGRUYXJnZXQSEgoEdGFncxgEIAEoCVIEdGFncxIjCg10ZXN0X3Byb3BlcnR5GAUgASgJUgx0ZXN0UHJvcGVydHk=');
@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = const {
  '1': 'Notification',
  '2': const [
    const {'1': 'summary', '3': 1, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'context_link', '3': 2, '4': 1, '5': 9, '10': 'contextLink'},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode('CgxOb3RpZmljYXRpb24SGAoHc3VtbWFyeRgBIAEoCVIHc3VtbWFyeRIhCgxjb250ZXh0X2xpbmsYAiABKAlSC2NvbnRleHRMaW5r');
@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup$json = const {
  '1': 'TestGroup',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gcs_prefix', '3': 2, '4': 1, '5': 9, '10': 'gcsPrefix'},
    const {'1': 'days_of_results', '3': 3, '4': 1, '5': 5, '10': 'daysOfResults'},
    const {'1': 'ignore_pending', '3': 4, '4': 1, '5': 8, '10': 'ignorePending'},
    const {'1': 'ignore_built', '3': 5, '4': 1, '5': 8, '10': 'ignoreBuilt'},
    const {'1': 'tests_name_policy', '3': 6, '4': 1, '5': 14, '6': '.TestGroup.TestsName', '10': 'testsNamePolicy'},
    const {'1': 'ignore_test_substring', '3': 8, '4': 3, '5': 9, '10': 'ignoreTestSubstring'},
    const {'1': 'column_header', '3': 9, '4': 3, '5': 11, '6': '.TestGroup.ColumnHeader', '10': 'columnHeader'},
    const {'1': 'fallback_grouping', '3': 10, '4': 1, '5': 14, '6': '.TestGroup.FallbackGrouping', '10': 'fallbackGrouping'},
    const {
      '1': 'alert_stale_results_hours',
      '3': 11,
      '4': 1,
      '5': 5,
      '8': const {'3': true},
      '10': 'alertStaleResultsHours',
    },
    const {
      '1': 'num_failures_to_alert',
      '3': 12,
      '4': 1,
      '5': 5,
      '8': const {'3': true},
      '10': 'numFailuresToAlert',
    },
    const {
      '1': 'bug_component',
      '3': 13,
      '4': 1,
      '5': 5,
      '8': const {'3': true},
      '10': 'bugComponent',
    },
    const {'1': 'code_search_path', '3': 14, '4': 1, '5': 9, '10': 'codeSearchPath'},
    const {'1': 'num_columns_recent', '3': 15, '4': 1, '5': 5, '10': 'numColumnsRecent'},
    const {'1': 'use_test_metadata', '3': 16, '4': 1, '5': 8, '10': 'useTestMetadata'},
    const {
      '1': 'alert_mail_to_addresses',
      '3': 17,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'alertMailToAddresses',
    },
    const {
      '1': 'alert_mail_subject',
      '3': 18,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'alertMailSubject',
    },
    const {
      '1': 'alert_mail_failure_message',
      '3': 19,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'alertMailFailureMessage',
    },
    const {
      '1': 'alert_mail_debug_url',
      '3': 20,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'alertMailDebugUrl',
    },
    const {
      '1': 'min_elapsed_minutes_between_mails',
      '3': 21,
      '4': 1,
      '5': 5,
      '8': const {'3': true},
      '10': 'minElapsedMinutesBetweenMails',
    },
    const {'1': 'enable_flaky_status', '3': 23, '4': 1, '5': 8, '10': 'enableFlakyStatus'},
    const {'1': 'disable_merged_status', '3': 60, '4': 1, '5': 8, '10': 'disableMergedStatus'},
    const {
      '1': 'use_kubernetes_client',
      '3': 24,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'useKubernetesClient',
    },
    const {'1': 'disable_prowjob_analysis', '3': 62, '4': 1, '5': 8, '10': 'disableProwjobAnalysis'},
    const {'1': 'is_external', '3': 25, '4': 1, '5': 8, '10': 'isExternal'},
    const {'1': 'test_name_config', '3': 26, '4': 1, '5': 11, '6': '.TestNameConfig', '10': 'testNameConfig'},
    const {'1': 'notifications', '3': 27, '4': 3, '5': 11, '6': '.Notification', '10': 'notifications'},
    const {'1': 'primary_grouping', '3': 29, '4': 1, '5': 14, '6': '.TestGroup.PrimaryGrouping', '10': 'primaryGrouping'},
    const {'1': 'enable_test_methods', '3': 30, '4': 1, '5': 8, '10': 'enableTestMethods'},
    const {'1': 'test_annotations', '3': 31, '4': 3, '5': 11, '6': '.TestGroup.TestAnnotation', '10': 'testAnnotations'},
    const {'1': 'max_test_methods_per_test', '3': 32, '4': 1, '5': 5, '10': 'maxTestMethodsPerTest'},
    const {'1': 'test_metadata_options', '3': 34, '4': 3, '5': 11, '6': '.TestMetadataOptions', '10': 'testMetadataOptions'},
    const {'1': 'test_tag_pattern', '3': 35, '4': 1, '5': 9, '10': 'testTagPattern'},
    const {
      '1': 'auto_bug_options',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.AutoBugOptions',
      '8': const {'3': true},
      '10': 'autoBugOptions',
    },
    const {'1': 'max_test_runtime_hours', '3': 37, '4': 1, '5': 5, '10': 'maxTestRuntimeHours'},
    const {'1': 'num_passes_to_disable_alert', '3': 38, '4': 1, '5': 5, '10': 'numPassesToDisableAlert'},
    const {'1': 'link_bugs_by_group', '3': 39, '4': 1, '5': 8, '10': 'linkBugsByGroup'},
    const {'1': 'test_method_properties', '3': 41, '4': 3, '5': 11, '6': '.TestGroup.KeyValue', '10': 'testMethodProperties'},
    const {'1': 'gather_bugs', '3': 42, '4': 1, '5': 8, '10': 'gatherBugs'},
    const {'1': 'short_text_metric', '3': 43, '4': 1, '5': 9, '10': 'shortTextMetric'},
    const {'1': 'build_override_configuration_value', '3': 44, '4': 1, '5': 9, '10': 'buildOverrideConfigurationValue'},
    const {'1': 'link_bugs_by_test_methods', '3': 45, '4': 1, '5': 8, '10': 'linkBugsByTestMethods'},
    const {'1': 'test_method_match_regex', '3': 46, '4': 1, '5': 9, '10': 'testMethodMatchRegex'},
    const {'1': 'test_method_unmatch_regex', '3': 61, '4': 1, '5': 9, '10': 'testMethodUnmatchRegex'},
    const {'1': 'use_full_method_names', '3': 47, '4': 1, '5': 8, '10': 'useFullMethodNames'},
    const {'1': 'fallback_grouping_configuration_value', '3': 49, '4': 1, '5': 9, '10': 'fallbackGroupingConfigurationValue'},
    const {'1': 'result_source', '3': 50, '4': 1, '5': 11, '6': '.TestGroup.ResultSource', '10': 'resultSource'},
    const {'1': 'custom_evaluator_rule_set', '3': 51, '4': 1, '5': 11, '6': '.RuleSet', '10': 'customEvaluatorRuleSet'},
    const {'1': 'read_state_from_storage', '3': 52, '4': 1, '5': 8, '10': 'readStateFromStorage'},
    const {'1': 'ignore_old_results', '3': 53, '4': 1, '5': 8, '10': 'ignoreOldResults'},
    const {'1': 'ignore_skip', '3': 54, '4': 1, '5': 8, '10': 'ignoreSkip'},
    const {'1': 'build_override_strftime', '3': 55, '4': 1, '5': 9, '10': 'buildOverrideStrftime'},
    const {'1': 'user_property', '3': 56, '4': 1, '5': 9, '10': 'userProperty'},
  ],
  '3': const [TestGroup_ColumnHeader$json, TestGroup_TestAnnotation$json, TestGroup_KeyValue$json, TestGroup_ResultSource$json],
  '4': const [TestGroup_TestsName$json, TestGroup_FallbackGrouping$json, TestGroup_PrimaryGrouping$json],
  '9': const [
    const {'1': 7, '2': 8},
    const {'1': 22, '2': 23},
    const {'1': 28, '2': 29},
    const {'1': 33, '2': 34},
    const {'1': 40, '2': 41},
    const {'1': 48, '2': 49},
    const {'1': 57, '2': 60},
  ],
};

@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup_ColumnHeader$json = const {
  '1': 'ColumnHeader',
  '2': const [
    const {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'property', '3': 2, '4': 1, '5': 9, '10': 'property'},
    const {'1': 'configuration_value', '3': 3, '4': 1, '5': 9, '10': 'configurationValue'},
    const {'1': 'list_all_values', '3': 4, '4': 1, '5': 8, '10': 'listAllValues'},
  ],
};

@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup_TestAnnotation$json = const {
  '1': 'TestAnnotation',
  '2': const [
    const {'1': 'short_text', '3': 1, '4': 1, '5': 9, '10': 'shortText'},
    const {'1': 'property_name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'propertyName'},
  ],
  '8': const [
    const {'1': 'short_text_message_source'},
  ],
};

@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup_KeyValue$json = const {
  '1': 'KeyValue',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup_ResultSource$json = const {
  '1': 'ResultSource',
  '2': const [
    const {'1': 'gcs_config', '3': 2, '4': 1, '5': 11, '6': '.GCSConfig', '9': 0, '10': 'gcsConfig'},
  ],
  '8': const [
    const {'1': 'result_source_config'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
    const {'1': 3, '2': 4},
    const {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup_TestsName$json = const {
  '1': 'TestsName',
  '2': const [
    const {'1': 'TESTS_NAME_UNSPECIFIED', '2': 0},
    const {'1': 'TESTS_NAME_IGNORE', '2': 1},
    const {'1': 'TESTS_NAME_REPLACE', '2': 2},
    const {'1': 'TESTS_NAME_APPEND', '2': 3},
  ],
};

@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup_FallbackGrouping$json = const {
  '1': 'FallbackGrouping',
  '2': const [
    const {'1': 'FALLBACK_GROUPING_NONE', '2': 0},
    const {'1': 'FALLBACK_GROUPING_DATE', '2': 1},
    const {'1': 'FALLBACK_GROUPING_LABELS', '2': 2},
    const {'1': 'FALLBACK_GROUPING_ID', '2': 3},
    const {'1': 'FALLBACK_GROUPING_BUILD', '2': 4},
    const {'1': 'FALLBACK_GROUPING_CONFIGURATION_VALUE', '2': 5},
  ],
};

@$core.Deprecated('Use testGroupDescriptor instead')
const TestGroup_PrimaryGrouping$json = const {
  '1': 'PrimaryGrouping',
  '2': const [
    const {'1': 'PRIMARY_GROUPING_NONE', '2': 0},
    const {'1': 'PRIMARY_GROUPING_BUILD', '2': 1},
  ],
};

/// Descriptor for `TestGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testGroupDescriptor = $convert.base64Decode('CglUZXN0R3JvdXASEgoEbmFtZRgBIAEoCVIEbmFtZRIdCgpnY3NfcHJlZml4GAIgASgJUglnY3NQcmVmaXgSJgoPZGF5c19vZl9yZXN1bHRzGAMgASgFUg1kYXlzT2ZSZXN1bHRzEiUKDmlnbm9yZV9wZW5kaW5nGAQgASgIUg1pZ25vcmVQZW5kaW5nEiEKDGlnbm9yZV9idWlsdBgFIAEoCFILaWdub3JlQnVpbHQSQAoRdGVzdHNfbmFtZV9wb2xpY3kYBiABKA4yFC5UZXN0R3JvdXAuVGVzdHNOYW1lUg90ZXN0c05hbWVQb2xpY3kSMgoVaWdub3JlX3Rlc3Rfc3Vic3RyaW5nGAggAygJUhNpZ25vcmVUZXN0U3Vic3RyaW5nEjwKDWNvbHVtbl9oZWFkZXIYCSADKAsyFy5UZXN0R3JvdXAuQ29sdW1uSGVhZGVyUgxjb2x1bW5IZWFkZXISSAoRZmFsbGJhY2tfZ3JvdXBpbmcYCiABKA4yGy5UZXN0R3JvdXAuRmFsbGJhY2tHcm91cGluZ1IQZmFsbGJhY2tHcm91cGluZxI9ChlhbGVydF9zdGFsZV9yZXN1bHRzX2hvdXJzGAsgASgFQgIYAVIWYWxlcnRTdGFsZVJlc3VsdHNIb3VycxI1ChVudW1fZmFpbHVyZXNfdG9fYWxlcnQYDCABKAVCAhgBUhJudW1GYWlsdXJlc1RvQWxlcnQSJwoNYnVnX2NvbXBvbmVudBgNIAEoBUICGAFSDGJ1Z0NvbXBvbmVudBIoChBjb2RlX3NlYXJjaF9wYXRoGA4gASgJUg5jb2RlU2VhcmNoUGF0aBIsChJudW1fY29sdW1uc19yZWNlbnQYDyABKAVSEG51bUNvbHVtbnNSZWNlbnQSKgoRdXNlX3Rlc3RfbWV0YWRhdGEYECABKAhSD3VzZVRlc3RNZXRhZGF0YRI5ChdhbGVydF9tYWlsX3RvX2FkZHJlc3NlcxgRIAEoCUICGAFSFGFsZXJ0TWFpbFRvQWRkcmVzc2VzEjAKEmFsZXJ0X21haWxfc3ViamVjdBgSIAEoCUICGAFSEGFsZXJ0TWFpbFN1YmplY3QSPwoaYWxlcnRfbWFpbF9mYWlsdXJlX21lc3NhZ2UYEyABKAlCAhgBUhdhbGVydE1haWxGYWlsdXJlTWVzc2FnZRIzChRhbGVydF9tYWlsX2RlYnVnX3VybBgUIAEoCUICGAFSEWFsZXJ0TWFpbERlYnVnVXJsEkwKIW1pbl9lbGFwc2VkX21pbnV0ZXNfYmV0d2Vlbl9tYWlscxgVIAEoBUICGAFSHW1pbkVsYXBzZWRNaW51dGVzQmV0d2Vlbk1haWxzEi4KE2VuYWJsZV9mbGFreV9zdGF0dXMYFyABKAhSEWVuYWJsZUZsYWt5U3RhdHVzEjIKFWRpc2FibGVfbWVyZ2VkX3N0YXR1cxg8IAEoCFITZGlzYWJsZU1lcmdlZFN0YXR1cxI2ChV1c2Vfa3ViZXJuZXRlc19jbGllbnQYGCABKAhCAhgBUhN1c2VLdWJlcm5ldGVzQ2xpZW50EjgKGGRpc2FibGVfcHJvd2pvYl9hbmFseXNpcxg+IAEoCFIWZGlzYWJsZVByb3dqb2JBbmFseXNpcxIfCgtpc19leHRlcm5hbBgZIAEoCFIKaXNFeHRlcm5hbBI5ChB0ZXN0X25hbWVfY29uZmlnGBogASgLMg8uVGVzdE5hbWVDb25maWdSDnRlc3ROYW1lQ29uZmlnEjMKDW5vdGlmaWNhdGlvbnMYGyADKAsyDS5Ob3RpZmljYXRpb25SDW5vdGlmaWNhdGlvbnMSRQoQcHJpbWFyeV9ncm91cGluZxgdIAEoDjIaLlRlc3RHcm91cC5QcmltYXJ5R3JvdXBpbmdSD3ByaW1hcnlHcm91cGluZxIuChNlbmFibGVfdGVzdF9tZXRob2RzGB4gASgIUhFlbmFibGVUZXN0TWV0aG9kcxJEChB0ZXN0X2Fubm90YXRpb25zGB8gAygLMhkuVGVzdEdyb3VwLlRlc3RBbm5vdGF0aW9uUg90ZXN0QW5ub3RhdGlvbnMSOAoZbWF4X3Rlc3RfbWV0aG9kc19wZXJfdGVzdBggIAEoBVIVbWF4VGVzdE1ldGhvZHNQZXJUZXN0EkgKFXRlc3RfbWV0YWRhdGFfb3B0aW9ucxgiIAMoCzIULlRlc3RNZXRhZGF0YU9wdGlvbnNSE3Rlc3RNZXRhZGF0YU9wdGlvbnMSKAoQdGVzdF90YWdfcGF0dGVybhgjIAEoCVIOdGVzdFRhZ1BhdHRlcm4SPQoQYXV0b19idWdfb3B0aW9ucxgkIAEoCzIPLkF1dG9CdWdPcHRpb25zQgIYAVIOYXV0b0J1Z09wdGlvbnMSMwoWbWF4X3Rlc3RfcnVudGltZV9ob3VycxglIAEoBVITbWF4VGVzdFJ1bnRpbWVIb3VycxI8ChtudW1fcGFzc2VzX3RvX2Rpc2FibGVfYWxlcnQYJiABKAVSF251bVBhc3Nlc1RvRGlzYWJsZUFsZXJ0EisKEmxpbmtfYnVnc19ieV9ncm91cBgnIAEoCFIPbGlua0J1Z3NCeUdyb3VwEkkKFnRlc3RfbWV0aG9kX3Byb3BlcnRpZXMYKSADKAsyEy5UZXN0R3JvdXAuS2V5VmFsdWVSFHRlc3RNZXRob2RQcm9wZXJ0aWVzEh8KC2dhdGhlcl9idWdzGCogASgIUgpnYXRoZXJCdWdzEioKEXNob3J0X3RleHRfbWV0cmljGCsgASgJUg9zaG9ydFRleHRNZXRyaWMSSwoiYnVpbGRfb3ZlcnJpZGVfY29uZmlndXJhdGlvbl92YWx1ZRgsIAEoCVIfYnVpbGRPdmVycmlkZUNvbmZpZ3VyYXRpb25WYWx1ZRI4ChlsaW5rX2J1Z3NfYnlfdGVzdF9tZXRob2RzGC0gASgIUhVsaW5rQnVnc0J5VGVzdE1ldGhvZHMSNQoXdGVzdF9tZXRob2RfbWF0Y2hfcmVnZXgYLiABKAlSFHRlc3RNZXRob2RNYXRjaFJlZ2V4EjkKGXRlc3RfbWV0aG9kX3VubWF0Y2hfcmVnZXgYPSABKAlSFnRlc3RNZXRob2RVbm1hdGNoUmVnZXgSMQoVdXNlX2Z1bGxfbWV0aG9kX25hbWVzGC8gASgIUhJ1c2VGdWxsTWV0aG9kTmFtZXMSUQolZmFsbGJhY2tfZ3JvdXBpbmdfY29uZmlndXJhdGlvbl92YWx1ZRgxIAEoCVIiZmFsbGJhY2tHcm91cGluZ0NvbmZpZ3VyYXRpb25WYWx1ZRI8Cg1yZXN1bHRfc291cmNlGDIgASgLMhcuVGVzdEdyb3VwLlJlc3VsdFNvdXJjZVIMcmVzdWx0U291cmNlEkMKGWN1c3RvbV9ldmFsdWF0b3JfcnVsZV9zZXQYMyABKAsyCC5SdWxlU2V0UhZjdXN0b21FdmFsdWF0b3JSdWxlU2V0EjUKF3JlYWRfc3RhdGVfZnJvbV9zdG9yYWdlGDQgASgIUhRyZWFkU3RhdGVGcm9tU3RvcmFnZRIsChJpZ25vcmVfb2xkX3Jlc3VsdHMYNSABKAhSEGlnbm9yZU9sZFJlc3VsdHMSHwoLaWdub3JlX3NraXAYNiABKAhSCmlnbm9yZVNraXASNgoXYnVpbGRfb3ZlcnJpZGVfc3RyZnRpbWUYNyABKAlSFWJ1aWxkT3ZlcnJpZGVTdHJmdGltZRIjCg11c2VyX3Byb3BlcnR5GDggASgJUgx1c2VyUHJvcGVydHkamQEKDENvbHVtbkhlYWRlchIUCgVsYWJlbBgBIAEoCVIFbGFiZWwSGgoIcHJvcGVydHkYAiABKAlSCHByb3BlcnR5Ei8KE2NvbmZpZ3VyYXRpb25fdmFsdWUYAyABKAlSEmNvbmZpZ3VyYXRpb25WYWx1ZRImCg9saXN0X2FsbF92YWx1ZXMYBCABKAhSDWxpc3RBbGxWYWx1ZXMacwoOVGVzdEFubm90YXRpb24SHQoKc2hvcnRfdGV4dBgBIAEoCVIJc2hvcnRUZXh0EiUKDXByb3BlcnR5X25hbWUYAiABKAlIAFIMcHJvcGVydHlOYW1lQhsKGXNob3J0X3RleHRfbWVzc2FnZV9zb3VyY2UaMgoIS2V5VmFsdWUSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlGmUKDFJlc3VsdFNvdXJjZRIrCgpnY3NfY29uZmlnGAIgASgLMgouR0NTQ29uZmlnSABSCWdjc0NvbmZpZ0IWChRyZXN1bHRfc291cmNlX2NvbmZpZ0oECAEQAkoECAMQBEoECAQQBSJtCglUZXN0c05hbWUSGgoWVEVTVFNfTkFNRV9VTlNQRUNJRklFRBAAEhUKEVRFU1RTX05BTUVfSUdOT1JFEAESFgoSVEVTVFNfTkFNRV9SRVBMQUNFEAISFQoRVEVTVFNfTkFNRV9BUFBFTkQQAyLKAQoQRmFsbGJhY2tHcm91cGluZxIaChZGQUxMQkFDS19HUk9VUElOR19OT05FEAASGgoWRkFMTEJBQ0tfR1JPVVBJTkdfREFURRABEhwKGEZBTExCQUNLX0dST1VQSU5HX0xBQkVMUxACEhgKFEZBTExCQUNLX0dST1VQSU5HX0lEEAMSGwoXRkFMTEJBQ0tfR1JPVVBJTkdfQlVJTEQQBBIpCiVGQUxMQkFDS19HUk9VUElOR19DT05GSUdVUkFUSU9OX1ZBTFVFEAUiSAoPUHJpbWFyeUdyb3VwaW5nEhkKFVBSSU1BUllfR1JPVVBJTkdfTk9ORRAAEhoKFlBSSU1BUllfR1JPVVBJTkdfQlVJTEQQAUoECAcQCEoECBYQF0oECBwQHUoECCEQIkoECCgQKUoECDAQMUoECDkQPA==');
@$core.Deprecated('Use gCSConfigDescriptor instead')
const GCSConfig$json = const {
  '1': 'GCSConfig',
  '2': const [
    const {'1': 'gcs_prefix', '3': 1, '4': 1, '5': 9, '10': 'gcsPrefix'},
    const {'1': 'pubsub_project', '3': 2, '4': 1, '5': 9, '10': 'pubsubProject'},
    const {'1': 'pubsub_subscription', '3': 3, '4': 1, '5': 9, '10': 'pubsubSubscription'},
  ],
};

/// Descriptor for `GCSConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCSConfigDescriptor = $convert.base64Decode('CglHQ1NDb25maWcSHQoKZ2NzX3ByZWZpeBgBIAEoCVIJZ2NzUHJlZml4EiUKDnB1YnN1Yl9wcm9qZWN0GAIgASgJUg1wdWJzdWJQcm9qZWN0Ei8KE3B1YnN1Yl9zdWJzY3JpcHRpb24YAyABKAlSEnB1YnN1YlN1YnNjcmlwdGlvbg==');
@$core.Deprecated('Use testMetadataOptionsDescriptor instead')
const TestMetadataOptions$json = const {
  '1': 'TestMetadataOptions',
  '2': const [
    const {'1': 'test_name_regex', '3': 1, '4': 1, '5': 9, '10': 'testNameRegex'},
    const {'1': 'bug_component', '3': 2, '4': 1, '5': 5, '10': 'bugComponent'},
    const {'1': 'owner', '3': 3, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'cc', '3': 4, '4': 3, '5': 9, '10': 'cc'},
    const {'1': 'message_regex', '3': 5, '4': 1, '5': 9, '10': 'messageRegex'},
  ],
  '9': const [
    const {'1': 6, '2': 7},
  ],
};

/// Descriptor for `TestMetadataOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMetadataOptionsDescriptor = $convert.base64Decode('ChNUZXN0TWV0YWRhdGFPcHRpb25zEiYKD3Rlc3RfbmFtZV9yZWdleBgBIAEoCVINdGVzdE5hbWVSZWdleBIjCg1idWdfY29tcG9uZW50GAIgASgFUgxidWdDb21wb25lbnQSFAoFb3duZXIYAyABKAlSBW93bmVyEg4KAmNjGAQgAygJUgJjYxIjCg1tZXNzYWdlX3JlZ2V4GAUgASgJUgxtZXNzYWdlUmVnZXhKBAgGEAc=');
@$core.Deprecated('Use autoBugOptionsDescriptor instead')
const AutoBugOptions$json = const {
  '1': 'AutoBugOptions',
  '2': const [
    const {'1': 'beta_autobug_component', '3': 10, '4': 1, '5': 5, '10': 'betaAutobugComponent'},
    const {'1': 'auto_close', '3': 1, '4': 1, '5': 8, '10': 'autoClose'},
    const {'1': 'hotlist_ids', '3': 2, '4': 3, '5': 3, '10': 'hotlistIds'},
    const {'1': 'priority', '3': 3, '4': 1, '5': 14, '6': '.AutoBugOptions.Priority', '10': 'priority'},
    const {
      '1': 'hotlist_ids_from_source',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.HotlistIdFromSource',
      '8': const {'3': true},
      '10': 'hotlistIdsFromSource',
    },
    const {'1': 'file_individual', '3': 5, '4': 1, '5': 8, '10': 'fileIndividual'},
    const {'1': 'singleton_autobug', '3': 6, '4': 1, '5': 8, '10': 'singletonAutobug'},
    const {'1': 'max_allowed_individual_bugs', '3': 7, '4': 1, '5': 5, '10': 'maxAllowedIndividualBugs'},
    const {'1': 'file_overall', '3': 8, '4': 1, '5': 8, '10': 'fileOverall'},
    const {'1': 'default_test_metadata', '3': 9, '4': 1, '5': 11, '6': '.AutoBugOptions.DefaultTestMetadata', '10': 'defaultTestMetadata'},
    const {'1': 'advanced_test_metadata', '3': 11, '4': 1, '5': 8, '10': 'advancedTestMetadata'},
    const {'1': 'file_stale', '3': 12, '4': 1, '5': 8, '10': 'fileStale'},
    const {'1': 'ignore_overall', '3': 13, '4': 1, '5': 8, '10': 'ignoreOverall'},
    const {'1': 'note', '3': 14, '4': 1, '5': 9, '10': 'note'},
  ],
  '3': const [AutoBugOptions_DefaultTestMetadata$json],
  '4': const [AutoBugOptions_Priority$json],
  '9': const [
    const {'1': 15, '2': 16},
    const {'1': 16, '2': 17},
  ],
};

@$core.Deprecated('Use autoBugOptionsDescriptor instead')
const AutoBugOptions_DefaultTestMetadata$json = const {
  '1': 'DefaultTestMetadata',
  '2': const [
    const {'1': 'bug_component', '3': 1, '4': 1, '5': 5, '10': 'bugComponent'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'cc', '3': 3, '4': 3, '5': 9, '10': 'cc'},
  ],
};

@$core.Deprecated('Use autoBugOptionsDescriptor instead')
const AutoBugOptions_Priority$json = const {
  '1': 'Priority',
  '2': const [
    const {'1': 'PRIORITY_UNSPECIFIED', '2': 0},
    const {'1': 'P0', '2': 1},
    const {'1': 'P1', '2': 2},
    const {'1': 'P2', '2': 3},
    const {'1': 'P3', '2': 4},
    const {'1': 'P4', '2': 5},
  ],
};

/// Descriptor for `AutoBugOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autoBugOptionsDescriptor = $convert.base64Decode('Cg5BdXRvQnVnT3B0aW9ucxI0ChZiZXRhX2F1dG9idWdfY29tcG9uZW50GAogASgFUhRiZXRhQXV0b2J1Z0NvbXBvbmVudBIdCgphdXRvX2Nsb3NlGAEgASgIUglhdXRvQ2xvc2USHwoLaG90bGlzdF9pZHMYAiADKANSCmhvdGxpc3RJZHMSNAoIcHJpb3JpdHkYAyABKA4yGC5BdXRvQnVnT3B0aW9ucy5Qcmlvcml0eVIIcHJpb3JpdHkSTwoXaG90bGlzdF9pZHNfZnJvbV9zb3VyY2UYBCADKAsyFC5Ib3RsaXN0SWRGcm9tU291cmNlQgIYAVIUaG90bGlzdElkc0Zyb21Tb3VyY2USJwoPZmlsZV9pbmRpdmlkdWFsGAUgASgIUg5maWxlSW5kaXZpZHVhbBIrChFzaW5nbGV0b25fYXV0b2J1ZxgGIAEoCFIQc2luZ2xldG9uQXV0b2J1ZxI9ChttYXhfYWxsb3dlZF9pbmRpdmlkdWFsX2J1Z3MYByABKAVSGG1heEFsbG93ZWRJbmRpdmlkdWFsQnVncxIhCgxmaWxlX292ZXJhbGwYCCABKAhSC2ZpbGVPdmVyYWxsElcKFWRlZmF1bHRfdGVzdF9tZXRhZGF0YRgJIAEoCzIjLkF1dG9CdWdPcHRpb25zLkRlZmF1bHRUZXN0TWV0YWRhdGFSE2RlZmF1bHRUZXN0TWV0YWRhdGESNAoWYWR2YW5jZWRfdGVzdF9tZXRhZGF0YRgLIAEoCFIUYWR2YW5jZWRUZXN0TWV0YWRhdGESHQoKZmlsZV9zdGFsZRgMIAEoCFIJZmlsZVN0YWxlEiUKDmlnbm9yZV9vdmVyYWxsGA0gASgIUg1pZ25vcmVPdmVyYWxsEhIKBG5vdGUYDiABKAlSBG5vdGUaYAoTRGVmYXVsdFRlc3RNZXRhZGF0YRIjCg1idWdfY29tcG9uZW50GAEgASgFUgxidWdDb21wb25lbnQSFAoFb3duZXIYAiABKAlSBW93bmVyEg4KAmNjGAMgAygJUgJjYyJMCghQcmlvcml0eRIYChRQUklPUklUWV9VTlNQRUNJRklFRBAAEgYKAlAwEAESBgoCUDEQAhIGCgJQMhADEgYKAlAzEAQSBgoCUDQQBUoECA8QEEoECBAQEQ==');
@$core.Deprecated('Use hotlistIdFromSourceDescriptor instead')
const HotlistIdFromSource$json = const {
  '1': 'HotlistIdFromSource',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'value'},
    const {'1': 'label', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'label'},
  ],
  '8': const [
    const {'1': 'hotlist_id_source'},
  ],
};

/// Descriptor for `HotlistIdFromSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotlistIdFromSourceDescriptor = $convert.base64Decode('ChNIb3RsaXN0SWRGcm9tU291cmNlEhYKBXZhbHVlGAEgASgDSABSBXZhbHVlEhYKBWxhYmVsGAIgASgJSABSBWxhYmVsQhMKEWhvdGxpc3RfaWRfc291cmNl');
@$core.Deprecated('Use dashboardDescriptor instead')
const Dashboard$json = const {
  '1': 'Dashboard',
  '2': const [
    const {'1': 'dashboard_tab', '3': 1, '4': 3, '5': 11, '6': '.DashboardTab', '10': 'dashboardTab'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'notifications', '3': 3, '4': 3, '5': 11, '6': '.Notification', '10': 'notifications'},
    const {'1': 'default_tab', '3': 5, '4': 1, '5': 9, '10': 'defaultTab'},
    const {'1': 'downplay_failing_tabs', '3': 8, '4': 1, '5': 8, '10': 'downplayFailingTabs'},
    const {
      '1': 'highlight_failing_tabs',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'highlightFailingTabs',
    },
    const {'1': 'highlight_today', '3': 7, '4': 1, '5': 8, '10': 'highlightToday'},
    const {'1': 'description', '3': 9, '4': 1, '5': 9, '10': 'description'},
  ],
  '9': const [
    const {'1': 4, '2': 5},
  ],
};

/// Descriptor for `Dashboard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardDescriptor = $convert.base64Decode('CglEYXNoYm9hcmQSMgoNZGFzaGJvYXJkX3RhYhgBIAMoCzINLkRhc2hib2FyZFRhYlIMZGFzaGJvYXJkVGFiEhIKBG5hbWUYAiABKAlSBG5hbWUSMwoNbm90aWZpY2F0aW9ucxgDIAMoCzINLk5vdGlmaWNhdGlvblINbm90aWZpY2F0aW9ucxIfCgtkZWZhdWx0X3RhYhgFIAEoCVIKZGVmYXVsdFRhYhIyChVkb3ducGxheV9mYWlsaW5nX3RhYnMYCCABKAhSE2Rvd25wbGF5RmFpbGluZ1RhYnMSOAoWaGlnaGxpZ2h0X2ZhaWxpbmdfdGFicxgGIAEoCEICGAFSFGhpZ2hsaWdodEZhaWxpbmdUYWJzEicKD2hpZ2hsaWdodF90b2RheRgHIAEoCFIOaGlnaGxpZ2h0VG9kYXkSIAoLZGVzY3JpcHRpb24YCSABKAlSC2Rlc2NyaXB0aW9uSgQIBBAF');
@$core.Deprecated('Use linkTemplateDescriptor instead')
const LinkTemplate$json = const {
  '1': 'LinkTemplate',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.LinkOptionsTemplate', '10': 'options'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `LinkTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkTemplateDescriptor = $convert.base64Decode('CgxMaW5rVGVtcGxhdGUSEAoDdXJsGAEgASgJUgN1cmwSLgoHb3B0aW9ucxgCIAMoCzIULkxpbmtPcHRpb25zVGVtcGxhdGVSB29wdGlvbnMSEgoEbmFtZRgDIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use linkOptionsTemplateDescriptor instead')
const LinkOptionsTemplate$json = const {
  '1': 'LinkOptionsTemplate',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `LinkOptionsTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkOptionsTemplateDescriptor = $convert.base64Decode('ChNMaW5rT3B0aW9uc1RlbXBsYXRlEhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use dashboardTabDescriptor instead')
const DashboardTab$json = const {
  '1': 'DashboardTab',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'test_group_name', '3': 2, '4': 1, '5': 9, '10': 'testGroupName'},
    const {'1': 'bug_component', '3': 3, '4': 1, '5': 5, '10': 'bugComponent'},
    const {'1': 'code_search_path', '3': 4, '4': 1, '5': 9, '10': 'codeSearchPath'},
    const {'1': 'num_columns_recent', '3': 5, '4': 1, '5': 5, '10': 'numColumnsRecent'},
    const {'1': 'base_options', '3': 6, '4': 1, '5': 9, '10': 'baseOptions'},
    const {'1': 'open_test_template', '3': 7, '4': 1, '5': 11, '6': '.LinkTemplate', '10': 'openTestTemplate'},
    const {'1': 'file_bug_template', '3': 8, '4': 1, '5': 11, '6': '.LinkTemplate', '10': 'fileBugTemplate'},
    const {'1': 'attach_bug_template', '3': 9, '4': 1, '5': 11, '6': '.LinkTemplate', '10': 'attachBugTemplate'},
    const {'1': 'results_text', '3': 10, '4': 1, '5': 9, '10': 'resultsText'},
    const {'1': 'results_url_template', '3': 11, '4': 1, '5': 11, '6': '.LinkTemplate', '10': 'resultsUrlTemplate'},
    const {'1': 'code_search_url_template', '3': 12, '4': 1, '5': 11, '6': '.LinkTemplate', '10': 'codeSearchUrlTemplate'},
    const {'1': 'description', '3': 13, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'tabular_names_regex', '3': 14, '4': 1, '5': 9, '10': 'tabularNamesRegex'},
    const {'1': 'alert_options', '3': 15, '4': 1, '5': 11, '6': '.DashboardTabAlertOptions', '10': 'alertOptions'},
    const {'1': 'flakiness_alert_options', '3': 24, '4': 1, '5': 11, '6': '.DashboardTabFlakinessAlertOptions', '10': 'flakinessAlertOptions'},
    const {'1': 'about_dashboard_url', '3': 16, '4': 1, '5': 9, '10': 'aboutDashboardUrl'},
    const {'1': 'open_bug_template', '3': 17, '4': 1, '5': 11, '6': '.LinkTemplate', '10': 'openBugTemplate'},
    const {'1': 'auto_file_bugs', '3': 18, '4': 1, '5': 8, '10': 'autoFileBugs'},
    const {'1': 'display_local_time', '3': 19, '4': 1, '5': 8, '10': 'displayLocalTime'},
    const {'1': 'context_menu_template', '3': 20, '4': 1, '5': 11, '6': '.LinkTemplate', '10': 'contextMenuTemplate'},
    const {'1': 'broken_column_threshold', '3': 21, '4': 1, '5': 2, '10': 'brokenColumnThreshold'},
    const {'1': 'beta_autobug_options', '3': 22, '4': 1, '5': 11, '6': '.AutoBugOptions', '10': 'betaAutobugOptions'},
    const {'1': 'health_analysis_options', '3': 23, '4': 1, '5': 11, '6': '.HealthAnalysisOptions', '10': 'healthAnalysisOptions'},
    const {'1': 'column_diff_link_templates', '3': 25, '4': 3, '5': 11, '6': '.LinkTemplate', '10': 'columnDiffLinkTemplates'},
  ],
};

/// Descriptor for `DashboardTab`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardTabDescriptor = $convert.base64Decode('CgxEYXNoYm9hcmRUYWISEgoEbmFtZRgBIAEoCVIEbmFtZRImCg90ZXN0X2dyb3VwX25hbWUYAiABKAlSDXRlc3RHcm91cE5hbWUSIwoNYnVnX2NvbXBvbmVudBgDIAEoBVIMYnVnQ29tcG9uZW50EigKEGNvZGVfc2VhcmNoX3BhdGgYBCABKAlSDmNvZGVTZWFyY2hQYXRoEiwKEm51bV9jb2x1bW5zX3JlY2VudBgFIAEoBVIQbnVtQ29sdW1uc1JlY2VudBIhCgxiYXNlX29wdGlvbnMYBiABKAlSC2Jhc2VPcHRpb25zEjsKEm9wZW5fdGVzdF90ZW1wbGF0ZRgHIAEoCzINLkxpbmtUZW1wbGF0ZVIQb3BlblRlc3RUZW1wbGF0ZRI5ChFmaWxlX2J1Z190ZW1wbGF0ZRgIIAEoCzINLkxpbmtUZW1wbGF0ZVIPZmlsZUJ1Z1RlbXBsYXRlEj0KE2F0dGFjaF9idWdfdGVtcGxhdGUYCSABKAsyDS5MaW5rVGVtcGxhdGVSEWF0dGFjaEJ1Z1RlbXBsYXRlEiEKDHJlc3VsdHNfdGV4dBgKIAEoCVILcmVzdWx0c1RleHQSPwoUcmVzdWx0c191cmxfdGVtcGxhdGUYCyABKAsyDS5MaW5rVGVtcGxhdGVSEnJlc3VsdHNVcmxUZW1wbGF0ZRJGChhjb2RlX3NlYXJjaF91cmxfdGVtcGxhdGUYDCABKAsyDS5MaW5rVGVtcGxhdGVSFWNvZGVTZWFyY2hVcmxUZW1wbGF0ZRIgCgtkZXNjcmlwdGlvbhgNIAEoCVILZGVzY3JpcHRpb24SLgoTdGFidWxhcl9uYW1lc19yZWdleBgOIAEoCVIRdGFidWxhck5hbWVzUmVnZXgSPgoNYWxlcnRfb3B0aW9ucxgPIAEoCzIZLkRhc2hib2FyZFRhYkFsZXJ0T3B0aW9uc1IMYWxlcnRPcHRpb25zEloKF2ZsYWtpbmVzc19hbGVydF9vcHRpb25zGBggASgLMiIuRGFzaGJvYXJkVGFiRmxha2luZXNzQWxlcnRPcHRpb25zUhVmbGFraW5lc3NBbGVydE9wdGlvbnMSLgoTYWJvdXRfZGFzaGJvYXJkX3VybBgQIAEoCVIRYWJvdXREYXNoYm9hcmRVcmwSOQoRb3Blbl9idWdfdGVtcGxhdGUYESABKAsyDS5MaW5rVGVtcGxhdGVSD29wZW5CdWdUZW1wbGF0ZRIkCg5hdXRvX2ZpbGVfYnVncxgSIAEoCFIMYXV0b0ZpbGVCdWdzEiwKEmRpc3BsYXlfbG9jYWxfdGltZRgTIAEoCFIQZGlzcGxheUxvY2FsVGltZRJBChVjb250ZXh0X21lbnVfdGVtcGxhdGUYFCABKAsyDS5MaW5rVGVtcGxhdGVSE2NvbnRleHRNZW51VGVtcGxhdGUSNgoXYnJva2VuX2NvbHVtbl90aHJlc2hvbGQYFSABKAJSFWJyb2tlbkNvbHVtblRocmVzaG9sZBJBChRiZXRhX2F1dG9idWdfb3B0aW9ucxgWIAEoCzIPLkF1dG9CdWdPcHRpb25zUhJiZXRhQXV0b2J1Z09wdGlvbnMSTgoXaGVhbHRoX2FuYWx5c2lzX29wdGlvbnMYFyABKAsyFi5IZWFsdGhBbmFseXNpc09wdGlvbnNSFWhlYWx0aEFuYWx5c2lzT3B0aW9ucxJKChpjb2x1bW5fZGlmZl9saW5rX3RlbXBsYXRlcxgZIAMoCzINLkxpbmtUZW1wbGF0ZVIXY29sdW1uRGlmZkxpbmtUZW1wbGF0ZXM=');
@$core.Deprecated('Use dashboardTabAlertOptionsDescriptor instead')
const DashboardTabAlertOptions$json = const {
  '1': 'DashboardTabAlertOptions',
  '2': const [
    const {'1': 'alert_stale_results_hours', '3': 1, '4': 1, '5': 5, '10': 'alertStaleResultsHours'},
    const {'1': 'num_failures_to_alert', '3': 2, '4': 1, '5': 5, '10': 'numFailuresToAlert'},
    const {'1': 'alert_mail_to_addresses', '3': 3, '4': 1, '5': 9, '10': 'alertMailToAddresses'},
    const {'1': 'num_passes_to_disable_alert', '3': 4, '4': 1, '5': 5, '10': 'numPassesToDisableAlert'},
    const {'1': 'subject', '3': 5, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'debug_url', '3': 6, '4': 1, '5': 9, '10': 'debugUrl'},
    const {'1': 'debug_message', '3': 7, '4': 1, '5': 9, '10': 'debugMessage'},
    const {'1': 'wait_minutes_between_emails', '3': 8, '4': 1, '5': 5, '10': 'waitMinutesBetweenEmails'},
    const {'1': 'alert_mail_failure_message', '3': 9, '4': 1, '5': 9, '10': 'alertMailFailureMessage'},
  ],
};

/// Descriptor for `DashboardTabAlertOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardTabAlertOptionsDescriptor = $convert.base64Decode('ChhEYXNoYm9hcmRUYWJBbGVydE9wdGlvbnMSOQoZYWxlcnRfc3RhbGVfcmVzdWx0c19ob3VycxgBIAEoBVIWYWxlcnRTdGFsZVJlc3VsdHNIb3VycxIxChVudW1fZmFpbHVyZXNfdG9fYWxlcnQYAiABKAVSEm51bUZhaWx1cmVzVG9BbGVydBI1ChdhbGVydF9tYWlsX3RvX2FkZHJlc3NlcxgDIAEoCVIUYWxlcnRNYWlsVG9BZGRyZXNzZXMSPAobbnVtX3Bhc3Nlc190b19kaXNhYmxlX2FsZXJ0GAQgASgFUhdudW1QYXNzZXNUb0Rpc2FibGVBbGVydBIYCgdzdWJqZWN0GAUgASgJUgdzdWJqZWN0EhsKCWRlYnVnX3VybBgGIAEoCVIIZGVidWdVcmwSIwoNZGVidWdfbWVzc2FnZRgHIAEoCVIMZGVidWdNZXNzYWdlEj0KG3dhaXRfbWludXRlc19iZXR3ZWVuX2VtYWlscxgIIAEoBVIYd2FpdE1pbnV0ZXNCZXR3ZWVuRW1haWxzEjsKGmFsZXJ0X21haWxfZmFpbHVyZV9tZXNzYWdlGAkgASgJUhdhbGVydE1haWxGYWlsdXJlTWVzc2FnZQ==');
@$core.Deprecated('Use dashboardTabFlakinessAlertOptionsDescriptor instead')
const DashboardTabFlakinessAlertOptions$json = const {
  '1': 'DashboardTabFlakinessAlertOptions',
  '2': const [
    const {'1': 'minimum_flakiness_to_alert', '3': 1, '4': 1, '5': 2, '10': 'minimumFlakinessToAlert'},
    const {'1': 'alert_mail_to_addresses', '3': 2, '4': 1, '5': 9, '10': 'alertMailToAddresses'},
    const {'1': 'subject', '3': 3, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'wait_minutes_between_emails', '3': 4, '4': 1, '5': 5, '10': 'waitMinutesBetweenEmails'},
    const {'1': 'alert_mail_failure_message', '3': 5, '4': 1, '5': 9, '10': 'alertMailFailureMessage'},
  ],
};

/// Descriptor for `DashboardTabFlakinessAlertOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardTabFlakinessAlertOptionsDescriptor = $convert.base64Decode('CiFEYXNoYm9hcmRUYWJGbGFraW5lc3NBbGVydE9wdGlvbnMSOwoabWluaW11bV9mbGFraW5lc3NfdG9fYWxlcnQYASABKAJSF21pbmltdW1GbGFraW5lc3NUb0FsZXJ0EjUKF2FsZXJ0X21haWxfdG9fYWRkcmVzc2VzGAIgASgJUhRhbGVydE1haWxUb0FkZHJlc3NlcxIYCgdzdWJqZWN0GAMgASgJUgdzdWJqZWN0Ej0KG3dhaXRfbWludXRlc19iZXR3ZWVuX2VtYWlscxgEIAEoBVIYd2FpdE1pbnV0ZXNCZXR3ZWVuRW1haWxzEjsKGmFsZXJ0X21haWxfZmFpbHVyZV9tZXNzYWdlGAUgASgJUhdhbGVydE1haWxGYWlsdXJlTWVzc2FnZQ==');
@$core.Deprecated('Use dashboardGroupDescriptor instead')
const DashboardGroup$json = const {
  '1': 'DashboardGroup',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'dashboard_names', '3': 2, '4': 3, '5': 9, '10': 'dashboardNames'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `DashboardGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardGroupDescriptor = $convert.base64Decode('Cg5EYXNoYm9hcmRHcm91cBISCgRuYW1lGAEgASgJUgRuYW1lEicKD2Rhc2hib2FyZF9uYW1lcxgCIAMoCVIOZGFzaGJvYXJkTmFtZXMSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use configurationDescriptor instead')
const Configuration$json = const {
  '1': 'Configuration',
  '2': const [
    const {'1': 'test_groups', '3': 1, '4': 3, '5': 11, '6': '.TestGroup', '10': 'testGroups'},
    const {'1': 'dashboards', '3': 2, '4': 3, '5': 11, '6': '.Dashboard', '10': 'dashboards'},
    const {'1': 'dashboard_groups', '3': 3, '4': 3, '5': 11, '6': '.DashboardGroup', '10': 'dashboardGroups'},
  ],
};

/// Descriptor for `Configuration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationDescriptor = $convert.base64Decode('Cg1Db25maWd1cmF0aW9uEisKC3Rlc3RfZ3JvdXBzGAEgAygLMgouVGVzdEdyb3VwUgp0ZXN0R3JvdXBzEioKCmRhc2hib2FyZHMYAiADKAsyCi5EYXNoYm9hcmRSCmRhc2hib2FyZHMSOgoQZGFzaGJvYXJkX2dyb3VwcxgDIAMoCzIPLkRhc2hib2FyZEdyb3VwUg9kYXNoYm9hcmRHcm91cHM=');
@$core.Deprecated('Use healthAnalysisOptionsDescriptor instead')
const HealthAnalysisOptions$json = const {
  '1': 'HealthAnalysisOptions',
  '2': const [
    const {'1': 'enable', '3': 1, '4': 1, '5': 8, '10': 'enable'},
    const {'1': 'days_of_analysis', '3': 2, '4': 1, '5': 5, '10': 'daysOfAnalysis'},
    const {'1': 'email_schedule', '3': 3, '4': 1, '5': 9, '10': 'emailSchedule'},
    const {'1': 'email_recipients', '3': 4, '4': 1, '5': 9, '10': 'emailRecipients'},
    const {'1': 'grouping_regex', '3': 5, '4': 1, '5': 9, '10': 'groupingRegex'},
  ],
};

/// Descriptor for `HealthAnalysisOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthAnalysisOptionsDescriptor = $convert.base64Decode('ChVIZWFsdGhBbmFseXNpc09wdGlvbnMSFgoGZW5hYmxlGAEgASgIUgZlbmFibGUSKAoQZGF5c19vZl9hbmFseXNpcxgCIAEoBVIOZGF5c09mQW5hbHlzaXMSJQoOZW1haWxfc2NoZWR1bGUYAyABKAlSDWVtYWlsU2NoZWR1bGUSKQoQZW1haWxfcmVjaXBpZW50cxgEIAEoCVIPZW1haWxSZWNpcGllbnRzEiUKDmdyb3VwaW5nX3JlZ2V4GAUgASgJUg1ncm91cGluZ1JlZ2V4');
@$core.Deprecated('Use defaultConfigurationDescriptor instead')
const DefaultConfiguration$json = const {
  '1': 'DefaultConfiguration',
  '2': const [
    const {
      '1': 'default_test_group',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.TestGroup',
      '8': const {'3': true},
      '10': 'defaultTestGroup',
    },
    const {
      '1': 'default_dashboard_tab',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.DashboardTab',
      '8': const {'3': true},
      '10': 'defaultDashboardTab',
    },
  ],
};

/// Descriptor for `DefaultConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defaultConfigurationDescriptor = $convert.base64Decode('ChREZWZhdWx0Q29uZmlndXJhdGlvbhI8ChJkZWZhdWx0X3Rlc3RfZ3JvdXAYASABKAsyCi5UZXN0R3JvdXBCAhgBUhBkZWZhdWx0VGVzdEdyb3VwEkUKFWRlZmF1bHRfZGFzaGJvYXJkX3RhYhgCIAEoCzINLkRhc2hib2FyZFRhYkICGAFSE2RlZmF1bHREYXNoYm9hcmRUYWI=');
