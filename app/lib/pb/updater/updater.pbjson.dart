///
//  Generated code. Do not modify.
//  source: pb/updater/updater.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use dashboardTabIdentifierDescriptor instead')
const DashboardTabIdentifier$json = const {
  '1': 'DashboardTabIdentifier',
  '2': const [
    const {'1': 'dashboard_name', '3': 1, '4': 1, '5': 9, '10': 'dashboardName'},
    const {'1': 'dashboard_tab', '3': 2, '4': 1, '5': 11, '6': '.DashboardTab', '10': 'dashboardTab'},
  ],
};

/// Descriptor for `DashboardTabIdentifier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardTabIdentifierDescriptor = $convert.base64Decode('ChZEYXNoYm9hcmRUYWJJZGVudGlmaWVyEiUKDmRhc2hib2FyZF9uYW1lGAEgASgJUg1kYXNoYm9hcmROYW1lEjIKDWRhc2hib2FyZF90YWIYAiABKAsyDS5EYXNoYm9hcmRUYWJSDGRhc2hib2FyZFRhYg==');
@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = const {
  '1': 'UpdateRequest',
  '2': const [
    const {'1': 'test_group', '3': 1, '4': 1, '5': 11, '6': '.TestGroup', '10': 'testGroup'},
    const {'1': 'dashboard_tab_identifiers', '3': 2, '4': 3, '5': 11, '6': '.DashboardTabIdentifier', '10': 'dashboardTabIdentifiers'},
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode('Cg1VcGRhdGVSZXF1ZXN0EikKCnRlc3RfZ3JvdXAYASABKAsyCi5UZXN0R3JvdXBSCXRlc3RHcm91cBJTChlkYXNoYm9hcmRfdGFiX2lkZW50aWZpZXJzGAIgAygLMhcuRGFzaGJvYXJkVGFiSWRlbnRpZmllclIXZGFzaGJvYXJkVGFiSWRlbnRpZmllcnM=');
@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = const {
  '1': 'UpdateResponse',
  '2': const [
    const {'1': 'update_time_millis', '3': 1, '4': 1, '5': 13, '10': 'updateTimeMillis'},
    const {'1': 'output_size_bytes', '3': 2, '4': 1, '5': 13, '10': 'outputSizeBytes'},
    const {'1': 'dashboard_tab_summaries', '3': 3, '4': 3, '5': 11, '6': '.DashboardTabSummary', '10': 'dashboardTabSummaries'},
    const {'1': 'update_entry', '3': 4, '4': 1, '5': 11, '6': '.UpdateInfo', '10': 'updateEntry'},
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode('Cg5VcGRhdGVSZXNwb25zZRIsChJ1cGRhdGVfdGltZV9taWxsaXMYASABKA1SEHVwZGF0ZVRpbWVNaWxsaXMSKgoRb3V0cHV0X3NpemVfYnl0ZXMYAiABKA1SD291dHB1dFNpemVCeXRlcxJMChdkYXNoYm9hcmRfdGFiX3N1bW1hcmllcxgDIAMoCzIULkRhc2hib2FyZFRhYlN1bW1hcnlSFWRhc2hib2FyZFRhYlN1bW1hcmllcxIuCgx1cGRhdGVfZW50cnkYBCABKAsyCy5VcGRhdGVJbmZvUgt1cGRhdGVFbnRyeQ==');
