///
//  Generated code. Do not modify.
//  source: pb/summary/summary.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use failingTestSummaryDescriptor instead')
const FailingTestSummary$json = const {
  '1': 'FailingTestSummary',
  '2': const [
    const {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'test_name', '3': 2, '4': 1, '5': 9, '10': 'testName'},
    const {'1': 'fail_build_id', '3': 3, '4': 1, '5': 9, '10': 'failBuildId'},
    const {'1': 'fail_timestamp', '3': 4, '4': 1, '5': 1, '10': 'failTimestamp'},
    const {'1': 'pass_build_id', '3': 5, '4': 1, '5': 9, '10': 'passBuildId'},
    const {'1': 'pass_timestamp', '3': 6, '4': 1, '5': 1, '10': 'passTimestamp'},
    const {'1': 'fail_count', '3': 7, '4': 1, '5': 5, '10': 'failCount'},
    const {'1': 'build_link', '3': 8, '4': 1, '5': 9, '10': 'buildLink'},
    const {'1': 'build_link_text', '3': 9, '4': 1, '5': 9, '10': 'buildLinkText'},
    const {'1': 'build_url_text', '3': 10, '4': 1, '5': 9, '10': 'buildUrlText'},
    const {'1': 'failure_message', '3': 11, '4': 1, '5': 9, '10': 'failureMessage'},
    const {'1': 'linked_bugs', '3': 12, '4': 3, '5': 9, '10': 'linkedBugs'},
    const {'1': 'fail_test_link', '3': 13, '4': 1, '5': 9, '10': 'failTestLink'},
    const {'1': 'latest_fail_test_link', '3': 17, '4': 1, '5': 9, '10': 'latestFailTestLink'},
    const {'1': 'latest_fail_build_id', '3': 14, '4': 1, '5': 9, '10': 'latestFailBuildId'},
    const {'1': 'properties', '3': 15, '4': 3, '5': 11, '6': '.FailingTestSummary.PropertiesEntry', '10': 'properties'},
    const {'1': 'hotlist_ids', '3': 16, '4': 3, '5': 9, '10': 'hotlistIds'},
    const {'1': 'email_addresses', '3': 18, '4': 3, '5': 9, '10': 'emailAddresses'},
  ],
  '3': const [FailingTestSummary_PropertiesEntry$json],
};

@$core.Deprecated('Use failingTestSummaryDescriptor instead')
const FailingTestSummary_PropertiesEntry$json = const {
  '1': 'PropertiesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `FailingTestSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failingTestSummaryDescriptor = $convert.base64Decode('ChJGYWlsaW5nVGVzdFN1bW1hcnkSIQoMZGlzcGxheV9uYW1lGAEgASgJUgtkaXNwbGF5TmFtZRIbCgl0ZXN0X25hbWUYAiABKAlSCHRlc3ROYW1lEiIKDWZhaWxfYnVpbGRfaWQYAyABKAlSC2ZhaWxCdWlsZElkEiUKDmZhaWxfdGltZXN0YW1wGAQgASgBUg1mYWlsVGltZXN0YW1wEiIKDXBhc3NfYnVpbGRfaWQYBSABKAlSC3Bhc3NCdWlsZElkEiUKDnBhc3NfdGltZXN0YW1wGAYgASgBUg1wYXNzVGltZXN0YW1wEh0KCmZhaWxfY291bnQYByABKAVSCWZhaWxDb3VudBIdCgpidWlsZF9saW5rGAggASgJUglidWlsZExpbmsSJgoPYnVpbGRfbGlua190ZXh0GAkgASgJUg1idWlsZExpbmtUZXh0EiQKDmJ1aWxkX3VybF90ZXh0GAogASgJUgxidWlsZFVybFRleHQSJwoPZmFpbHVyZV9tZXNzYWdlGAsgASgJUg5mYWlsdXJlTWVzc2FnZRIfCgtsaW5rZWRfYnVncxgMIAMoCVIKbGlua2VkQnVncxIkCg5mYWlsX3Rlc3RfbGluaxgNIAEoCVIMZmFpbFRlc3RMaW5rEjEKFWxhdGVzdF9mYWlsX3Rlc3RfbGluaxgRIAEoCVISbGF0ZXN0RmFpbFRlc3RMaW5rEi8KFGxhdGVzdF9mYWlsX2J1aWxkX2lkGA4gASgJUhFsYXRlc3RGYWlsQnVpbGRJZBJDCgpwcm9wZXJ0aWVzGA8gAygLMiMuRmFpbGluZ1Rlc3RTdW1tYXJ5LlByb3BlcnRpZXNFbnRyeVIKcHJvcGVydGllcxIfCgtob3RsaXN0X2lkcxgQIAMoCVIKaG90bGlzdElkcxInCg9lbWFpbF9hZGRyZXNzZXMYEiADKAlSDmVtYWlsQWRkcmVzc2VzGj0KD1Byb3BlcnRpZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use testInfoDescriptor instead')
const TestInfo$json = const {
  '1': 'TestInfo',
  '2': const [
    const {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'total_non_infra_runs', '3': 2, '4': 1, '5': 5, '10': 'totalNonInfraRuns'},
    const {'1': 'passed_non_infra_runs', '3': 3, '4': 1, '5': 5, '10': 'passedNonInfraRuns'},
    const {'1': 'failed_non_infra_runs', '3': 4, '4': 1, '5': 5, '10': 'failedNonInfraRuns'},
    const {'1': 'failed_infra_runs', '3': 5, '4': 1, '5': 5, '10': 'failedInfraRuns'},
    const {'1': 'total_runs_with_infra', '3': 6, '4': 1, '5': 5, '10': 'totalRunsWithInfra'},
    const {'1': 'other_runs', '3': 7, '4': 1, '5': 5, '10': 'otherRuns'},
    const {'1': 'flakiness', '3': 8, '4': 1, '5': 2, '10': 'flakiness'},
    const {'1': 'previous_flakiness', '3': 10, '4': 3, '5': 2, '10': 'previousFlakiness'},
    const {'1': 'change_from_last_interval', '3': 9, '4': 1, '5': 14, '6': '.TestInfo.Trend', '10': 'changeFromLastInterval'},
    const {'1': 'infra_failures', '3': 11, '4': 3, '5': 11, '6': '.TestInfo.InfraFailuresEntry', '10': 'infraFailures'},
  ],
  '3': const [TestInfo_InfraFailuresEntry$json],
  '4': const [TestInfo_Trend$json],
};

@$core.Deprecated('Use testInfoDescriptor instead')
const TestInfo_InfraFailuresEntry$json = const {
  '1': 'InfraFailuresEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use testInfoDescriptor instead')
const TestInfo_Trend$json = const {
  '1': 'Trend',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'NO_CHANGE', '2': 1},
    const {'1': 'UP', '2': 2},
    const {'1': 'DOWN', '2': 3},
  ],
};

/// Descriptor for `TestInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testInfoDescriptor = $convert.base64Decode('CghUZXN0SW5mbxIhCgxkaXNwbGF5X25hbWUYASABKAlSC2Rpc3BsYXlOYW1lEi8KFHRvdGFsX25vbl9pbmZyYV9ydW5zGAIgASgFUhF0b3RhbE5vbkluZnJhUnVucxIxChVwYXNzZWRfbm9uX2luZnJhX3J1bnMYAyABKAVSEnBhc3NlZE5vbkluZnJhUnVucxIxChVmYWlsZWRfbm9uX2luZnJhX3J1bnMYBCABKAVSEmZhaWxlZE5vbkluZnJhUnVucxIqChFmYWlsZWRfaW5mcmFfcnVucxgFIAEoBVIPZmFpbGVkSW5mcmFSdW5zEjEKFXRvdGFsX3J1bnNfd2l0aF9pbmZyYRgGIAEoBVISdG90YWxSdW5zV2l0aEluZnJhEh0KCm90aGVyX3J1bnMYByABKAVSCW90aGVyUnVucxIcCglmbGFraW5lc3MYCCABKAJSCWZsYWtpbmVzcxItChJwcmV2aW91c19mbGFraW5lc3MYCiADKAJSEXByZXZpb3VzRmxha2luZXNzEkoKGWNoYW5nZV9mcm9tX2xhc3RfaW50ZXJ2YWwYCSABKA4yDy5UZXN0SW5mby5UcmVuZFIWY2hhbmdlRnJvbUxhc3RJbnRlcnZhbBJDCg5pbmZyYV9mYWlsdXJlcxgLIAMoCzIcLlRlc3RJbmZvLkluZnJhRmFpbHVyZXNFbnRyeVINaW5mcmFGYWlsdXJlcxpAChJJbmZyYUZhaWx1cmVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4ASI1CgVUcmVuZBILCgdVTktOT1dOEAASDQoJTk9fQ0hBTkdFEAESBgoCVVAQAhIICgRET1dOEAM=');
@$core.Deprecated('Use healthinessInfoDescriptor instead')
const HealthinessInfo$json = const {
  '1': 'HealthinessInfo',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'start'},
    const {'1': 'end', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'end'},
    const {'1': 'tests', '3': 3, '4': 3, '5': 11, '6': '.TestInfo', '10': 'tests'},
    const {'1': 'average_flakiness', '3': 4, '4': 1, '5': 2, '10': 'averageFlakiness'},
    const {'1': 'previous_flakiness', '3': 5, '4': 3, '5': 2, '10': 'previousFlakiness'},
  ],
};

/// Descriptor for `HealthinessInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthinessInfoDescriptor = $convert.base64Decode('Cg9IZWFsdGhpbmVzc0luZm8SMAoFc3RhcnQYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgVzdGFydBIsCgNlbmQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgNlbmQSHwoFdGVzdHMYAyADKAsyCS5UZXN0SW5mb1IFdGVzdHMSKwoRYXZlcmFnZV9mbGFraW5lc3MYBCABKAJSEGF2ZXJhZ2VGbGFraW5lc3MSLQoScHJldmlvdXNfZmxha2luZXNzGAUgAygCUhFwcmV2aW91c0ZsYWtpbmVzcw==');
@$core.Deprecated('Use alertingDataDescriptor instead')
const AlertingData$json = const {
  '1': 'AlertingData',
  '2': const [
    const {'1': 'last_email_time', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastEmailTime'},
  ],
};

/// Descriptor for `AlertingData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertingDataDescriptor = $convert.base64Decode('CgxBbGVydGluZ0RhdGESQgoPbGFzdF9lbWFpbF90aW1lGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFINbGFzdEVtYWlsVGltZQ==');
@$core.Deprecated('Use dashboardTabSummaryDescriptor instead')
const DashboardTabSummary$json = const {
  '1': 'DashboardTabSummary',
  '2': const [
    const {'1': 'dashboard_name', '3': 1, '4': 1, '5': 9, '10': 'dashboardName'},
    const {'1': 'dashboard_tab_name', '3': 2, '4': 1, '5': 9, '10': 'dashboardTabName'},
    const {'1': 'alert', '3': 3, '4': 1, '5': 9, '10': 'alert'},
    const {'1': 'failing_test_summaries', '3': 4, '4': 3, '5': 11, '6': '.FailingTestSummary', '10': 'failingTestSummaries'},
    const {'1': 'last_update_timestamp', '3': 5, '4': 1, '5': 1, '10': 'lastUpdateTimestamp'},
    const {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'overall_status', '3': 7, '4': 1, '5': 14, '6': '.DashboardTabSummary.TabStatus', '10': 'overallStatus'},
    const {'1': 'latest_green', '3': 8, '4': 1, '5': 9, '10': 'latestGreen'},
    const {'1': 'last_run_timestamp', '3': 9, '4': 1, '5': 1, '10': 'lastRunTimestamp'},
    const {'1': 'bug_url', '3': 10, '4': 1, '5': 9, '10': 'bugUrl'},
    const {'1': 'healthiness', '3': 12, '4': 1, '5': 11, '6': '.HealthinessInfo', '10': 'healthiness'},
    const {'1': 'linked_issues', '3': 13, '4': 3, '5': 9, '10': 'linkedIssues'},
    const {'1': 'alerting_data', '3': 14, '4': 1, '5': 11, '6': '.AlertingData', '10': 'alertingData'},
  ],
  '4': const [DashboardTabSummary_TabStatus$json],
  '9': const [
    const {'1': 11, '2': 12},
  ],
};

@$core.Deprecated('Use dashboardTabSummaryDescriptor instead')
const DashboardTabSummary_TabStatus$json = const {
  '1': 'TabStatus',
  '2': const [
    const {'1': 'NOT_SET', '2': 0},
    const {'1': 'UNKNOWN', '2': 1},
    const {'1': 'PASS', '2': 2},
    const {'1': 'FAIL', '2': 3},
    const {'1': 'FLAKY', '2': 4},
    const {'1': 'STALE', '2': 5},
    const {'1': 'BROKEN', '2': 6},
  ],
};

/// Descriptor for `DashboardTabSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardTabSummaryDescriptor = $convert.base64Decode('ChNEYXNoYm9hcmRUYWJTdW1tYXJ5EiUKDmRhc2hib2FyZF9uYW1lGAEgASgJUg1kYXNoYm9hcmROYW1lEiwKEmRhc2hib2FyZF90YWJfbmFtZRgCIAEoCVIQZGFzaGJvYXJkVGFiTmFtZRIUCgVhbGVydBgDIAEoCVIFYWxlcnQSSQoWZmFpbGluZ190ZXN0X3N1bW1hcmllcxgEIAMoCzITLkZhaWxpbmdUZXN0U3VtbWFyeVIUZmFpbGluZ1Rlc3RTdW1tYXJpZXMSMgoVbGFzdF91cGRhdGVfdGltZXN0YW1wGAUgASgBUhNsYXN0VXBkYXRlVGltZXN0YW1wEhYKBnN0YXR1cxgGIAEoCVIGc3RhdHVzEkUKDm92ZXJhbGxfc3RhdHVzGAcgASgOMh4uRGFzaGJvYXJkVGFiU3VtbWFyeS5UYWJTdGF0dXNSDW92ZXJhbGxTdGF0dXMSIQoMbGF0ZXN0X2dyZWVuGAggASgJUgtsYXRlc3RHcmVlbhIsChJsYXN0X3J1bl90aW1lc3RhbXAYCSABKAFSEGxhc3RSdW5UaW1lc3RhbXASFwoHYnVnX3VybBgKIAEoCVIGYnVnVXJsEjIKC2hlYWx0aGluZXNzGAwgASgLMhAuSGVhbHRoaW5lc3NJbmZvUgtoZWFsdGhpbmVzcxIjCg1saW5rZWRfaXNzdWVzGA0gAygJUgxsaW5rZWRJc3N1ZXMSMgoNYWxlcnRpbmdfZGF0YRgOIAEoCzINLkFsZXJ0aW5nRGF0YVIMYWxlcnRpbmdEYXRhIlsKCVRhYlN0YXR1cxILCgdOT1RfU0VUEAASCwoHVU5LTk9XThABEggKBFBBU1MQAhIICgRGQUlMEAMSCQoFRkxBS1kQBBIJCgVTVEFMRRAFEgoKBkJST0tFThAGSgQICxAM');
@$core.Deprecated('Use dashboardSummaryDescriptor instead')
const DashboardSummary$json = const {
  '1': 'DashboardSummary',
  '2': const [
    const {'1': 'tab_summaries', '3': 1, '4': 3, '5': 11, '6': '.DashboardTabSummary', '10': 'tabSummaries'},
  ],
};

/// Descriptor for `DashboardSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardSummaryDescriptor = $convert.base64Decode('ChBEYXNoYm9hcmRTdW1tYXJ5EjkKDXRhYl9zdW1tYXJpZXMYASADKAsyFC5EYXNoYm9hcmRUYWJTdW1tYXJ5Ugx0YWJTdW1tYXJpZXM=');
