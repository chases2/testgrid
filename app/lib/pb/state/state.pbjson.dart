///
//  Generated code. Do not modify.
//  source: pb/state/state.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use propertyDescriptor instead')
const Property$json = const {
  '1': 'Property',
  '2': const [
    const {'1': 'property', '3': 1, '4': 3, '5': 11, '6': '.Property.PropertyEntry', '10': 'property'},
  ],
  '3': const [Property_PropertyEntry$json],
};

@$core.Deprecated('Use propertyDescriptor instead')
const Property_PropertyEntry$json = const {
  '1': 'PropertyEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Property`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyDescriptor = $convert.base64Decode('CghQcm9wZXJ0eRIzCghwcm9wZXJ0eRgBIAMoCzIXLlByb3BlcnR5LlByb3BlcnR5RW50cnlSCHByb3BlcnR5GjsKDVByb3BlcnR5RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use metricDescriptor instead')
const Metric$json = const {
  '1': 'Metric',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'indices', '3': 2, '4': 3, '5': 5, '10': 'indices'},
    const {'1': 'values', '3': 3, '4': 3, '5': 1, '10': 'values'},
  ],
};

/// Descriptor for `Metric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricDescriptor = $convert.base64Decode('CgZNZXRyaWMSEgoEbmFtZRgBIAEoCVIEbmFtZRIYCgdpbmRpY2VzGAIgAygFUgdpbmRpY2VzEhYKBnZhbHVlcxgDIAMoAVIGdmFsdWVz');
@$core.Deprecated('Use updatePhaseDataDescriptor instead')
const UpdatePhaseData$json = const {
  '1': 'UpdatePhaseData',
  '2': const [
    const {'1': 'phase_name', '3': 1, '4': 1, '5': 9, '10': 'phaseName'},
    const {'1': 'phase_seconds', '3': 2, '4': 1, '5': 1, '10': 'phaseSeconds'},
  ],
};

/// Descriptor for `UpdatePhaseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePhaseDataDescriptor = $convert.base64Decode('Cg9VcGRhdGVQaGFzZURhdGESHQoKcGhhc2VfbmFtZRgBIAEoCVIJcGhhc2VOYW1lEiMKDXBoYXNlX3NlY29uZHMYAiABKAFSDHBoYXNlU2Vjb25kcw==');
@$core.Deprecated('Use updateInfoDescriptor instead')
const UpdateInfo$json = const {
  '1': 'UpdateInfo',
  '2': const [
    const {'1': 'update_phase_data', '3': 1, '4': 3, '5': 11, '6': '.UpdatePhaseData', '10': 'updatePhaseData'},
  ],
};

/// Descriptor for `UpdateInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInfoDescriptor = $convert.base64Decode('CgpVcGRhdGVJbmZvEjwKEXVwZGF0ZV9waGFzZV9kYXRhGAEgAygLMhAuVXBkYXRlUGhhc2VEYXRhUg91cGRhdGVQaGFzZURhdGE=');
@$core.Deprecated('Use alertInfoDescriptor instead')
const AlertInfo$json = const {
  '1': 'AlertInfo',
  '2': const [
    const {'1': 'fail_count', '3': 1, '4': 1, '5': 5, '10': 'failCount'},
    const {'1': 'fail_build_id', '3': 2, '4': 1, '5': 9, '10': 'failBuildId'},
    const {'1': 'fail_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'failTime'},
    const {'1': 'fail_test_id', '3': 4, '4': 1, '5': 9, '10': 'failTestId'},
    const {'1': 'pass_build_id', '3': 5, '4': 1, '5': 9, '10': 'passBuildId'},
    const {'1': 'pass_time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'passTime'},
    const {'1': 'failure_message', '3': 7, '4': 1, '5': 9, '10': 'failureMessage'},
    const {'1': 'build_link', '3': 8, '4': 1, '5': 9, '10': 'buildLink'},
    const {'1': 'build_link_text', '3': 9, '4': 1, '5': 9, '10': 'buildLinkText'},
    const {'1': 'build_url_text', '3': 10, '4': 1, '5': 9, '10': 'buildUrlText'},
    const {'1': 'latest_fail_build_id', '3': 11, '4': 1, '5': 9, '10': 'latestFailBuildId'},
    const {'1': 'latest_fail_test_id', '3': 14, '4': 1, '5': 9, '10': 'latestFailTestId'},
    const {'1': 'properties', '3': 12, '4': 3, '5': 11, '6': '.AlertInfo.PropertiesEntry', '10': 'properties'},
    const {'1': 'hotlist_ids', '3': 13, '4': 3, '5': 9, '10': 'hotlistIds'},
    const {'1': 'email_addresses', '3': 15, '4': 3, '5': 9, '10': 'emailAddresses'},
  ],
  '3': const [AlertInfo_PropertiesEntry$json],
};

@$core.Deprecated('Use alertInfoDescriptor instead')
const AlertInfo_PropertiesEntry$json = const {
  '1': 'PropertiesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `AlertInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertInfoDescriptor = $convert.base64Decode('CglBbGVydEluZm8SHQoKZmFpbF9jb3VudBgBIAEoBVIJZmFpbENvdW50EiIKDWZhaWxfYnVpbGRfaWQYAiABKAlSC2ZhaWxCdWlsZElkEjcKCWZhaWxfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGZhaWxUaW1lEiAKDGZhaWxfdGVzdF9pZBgEIAEoCVIKZmFpbFRlc3RJZBIiCg1wYXNzX2J1aWxkX2lkGAUgASgJUgtwYXNzQnVpbGRJZBI3CglwYXNzX3RpbWUYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghwYXNzVGltZRInCg9mYWlsdXJlX21lc3NhZ2UYByABKAlSDmZhaWx1cmVNZXNzYWdlEh0KCmJ1aWxkX2xpbmsYCCABKAlSCWJ1aWxkTGluaxImCg9idWlsZF9saW5rX3RleHQYCSABKAlSDWJ1aWxkTGlua1RleHQSJAoOYnVpbGRfdXJsX3RleHQYCiABKAlSDGJ1aWxkVXJsVGV4dBIvChRsYXRlc3RfZmFpbF9idWlsZF9pZBgLIAEoCVIRbGF0ZXN0RmFpbEJ1aWxkSWQSLQoTbGF0ZXN0X2ZhaWxfdGVzdF9pZBgOIAEoCVIQbGF0ZXN0RmFpbFRlc3RJZBI6Cgpwcm9wZXJ0aWVzGAwgAygLMhouQWxlcnRJbmZvLlByb3BlcnRpZXNFbnRyeVIKcHJvcGVydGllcxIfCgtob3RsaXN0X2lkcxgNIAMoCVIKaG90bGlzdElkcxInCg9lbWFpbF9hZGRyZXNzZXMYDyADKAlSDmVtYWlsQWRkcmVzc2VzGj0KD1Byb3BlcnRpZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use testMetadataDescriptor instead')
const TestMetadata$json = const {
  '1': 'TestMetadata',
  '2': const [
    const {'1': 'test_name', '3': 1, '4': 1, '5': 9, '10': 'testName'},
    const {'1': 'bug_component', '3': 2, '4': 1, '5': 5, '10': 'bugComponent'},
    const {'1': 'owner', '3': 3, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'cc', '3': 4, '4': 3, '5': 9, '10': 'cc'},
    const {'1': 'error_type', '3': 5, '4': 1, '5': 9, '10': 'errorType'},
  ],
  '9': const [
    const {'1': 6, '2': 7},
  ],
};

/// Descriptor for `TestMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMetadataDescriptor = $convert.base64Decode('CgxUZXN0TWV0YWRhdGESGwoJdGVzdF9uYW1lGAEgASgJUgh0ZXN0TmFtZRIjCg1idWdfY29tcG9uZW50GAIgASgFUgxidWdDb21wb25lbnQSFAoFb3duZXIYAyABKAlSBW93bmVyEg4KAmNjGAQgAygJUgJjYxIdCgplcnJvcl90eXBlGAUgASgJUgllcnJvclR5cGVKBAgGEAc=');
@$core.Deprecated('Use columnDescriptor instead')
const Column$json = const {
  '1': 'Column',
  '2': const [
    const {'1': 'build', '3': 1, '4': 1, '5': 9, '10': 'build'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'started', '3': 3, '4': 1, '5': 1, '10': 'started'},
    const {'1': 'extra', '3': 4, '4': 3, '5': 9, '10': 'extra'},
    const {'1': 'hotlist_ids', '3': 5, '4': 1, '5': 9, '10': 'hotlistIds'},
    const {'1': 'hint', '3': 6, '4': 1, '5': 9, '10': 'hint'},
    const {'1': 'email_addresses', '3': 7, '4': 3, '5': 9, '10': 'emailAddresses'},
    const {'1': 'stats', '3': 8, '4': 1, '5': 11, '6': '.Stats', '10': 'stats'},
  ],
};

/// Descriptor for `Column`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List columnDescriptor = $convert.base64Decode('CgZDb2x1bW4SFAoFYnVpbGQYASABKAlSBWJ1aWxkEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHc3RhcnRlZBgDIAEoAVIHc3RhcnRlZBIUCgVleHRyYRgEIAMoCVIFZXh0cmESHwoLaG90bGlzdF9pZHMYBSABKAlSCmhvdGxpc3RJZHMSEgoEaGludBgGIAEoCVIEaGludBInCg9lbWFpbF9hZGRyZXNzZXMYByADKAlSDmVtYWlsQWRkcmVzc2VzEhwKBXN0YXRzGAggASgLMgYuU3RhdHNSBXN0YXRz');
@$core.Deprecated('Use statsDescriptor instead')
const Stats$json = const {
  '1': 'Stats',
  '2': const [
    const {'1': 'fail_count', '3': 1, '4': 1, '5': 5, '10': 'failCount'},
    const {'1': 'pass_count', '3': 2, '4': 1, '5': 5, '10': 'passCount'},
    const {'1': 'total_count', '3': 3, '4': 1, '5': 5, '10': 'totalCount'},
    const {'1': 'pending', '3': 4, '4': 1, '5': 8, '10': 'pending'},
    const {'1': 'broken', '3': 5, '4': 1, '5': 8, '10': 'broken'},
  ],
};

/// Descriptor for `Stats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsDescriptor = $convert.base64Decode('CgVTdGF0cxIdCgpmYWlsX2NvdW50GAEgASgFUglmYWlsQ291bnQSHQoKcGFzc19jb3VudBgCIAEoBVIJcGFzc0NvdW50Eh8KC3RvdGFsX2NvdW50GAMgASgFUgp0b3RhbENvdW50EhgKB3BlbmRpbmcYBCABKAhSB3BlbmRpbmcSFgoGYnJva2VuGAUgASgIUgZicm9rZW4=');
@$core.Deprecated('Use rowDescriptor instead')
const Row$json = const {
  '1': 'Row',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'results', '3': 3, '4': 3, '5': 5, '10': 'results'},
    const {'1': 'cell_ids', '3': 4, '4': 3, '5': 9, '10': 'cellIds'},
    const {'1': 'messages', '3': 5, '4': 3, '5': 9, '10': 'messages'},
    const {'1': 'metric', '3': 7, '4': 3, '5': 9, '10': 'metric'},
    const {'1': 'metrics', '3': 8, '4': 3, '5': 11, '6': '.Metric', '10': 'metrics'},
    const {'1': 'icons', '3': 9, '4': 3, '5': 9, '10': 'icons'},
    const {'1': 'issues', '3': 10, '4': 3, '5': 9, '10': 'issues'},
    const {'1': 'alert_info', '3': 11, '4': 1, '5': 11, '6': '.AlertInfo', '10': 'alertInfo'},
    const {'1': 'user_property', '3': 12, '4': 3, '5': 9, '10': 'userProperty'},
    const {'1': 'properties', '3': 13, '4': 3, '5': 11, '6': '.Property', '10': 'properties'},
  ],
  '9': const [
    const {'1': 6, '2': 7},
  ],
};

/// Descriptor for `Row`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rowDescriptor = $convert.base64Decode('CgNSb3cSEgoEbmFtZRgBIAEoCVIEbmFtZRIOCgJpZBgCIAEoCVICaWQSGAoHcmVzdWx0cxgDIAMoBVIHcmVzdWx0cxIZCghjZWxsX2lkcxgEIAMoCVIHY2VsbElkcxIaCghtZXNzYWdlcxgFIAMoCVIIbWVzc2FnZXMSFgoGbWV0cmljGAcgAygJUgZtZXRyaWMSIQoHbWV0cmljcxgIIAMoCzIHLk1ldHJpY1IHbWV0cmljcxIUCgVpY29ucxgJIAMoCVIFaWNvbnMSFgoGaXNzdWVzGAogAygJUgZpc3N1ZXMSKQoKYWxlcnRfaW5mbxgLIAEoCzIKLkFsZXJ0SW5mb1IJYWxlcnRJbmZvEiMKDXVzZXJfcHJvcGVydHkYDCADKAlSDHVzZXJQcm9wZXJ0eRIpCgpwcm9wZXJ0aWVzGA0gAygLMgkuUHJvcGVydHlSCnByb3BlcnRpZXNKBAgGEAc=');
@$core.Deprecated('Use gridDescriptor instead')
const Grid$json = const {
  '1': 'Grid',
  '2': const [
    const {'1': 'columns', '3': 1, '4': 3, '5': 11, '6': '.Column', '10': 'columns'},
    const {'1': 'rows', '3': 2, '4': 3, '5': 11, '6': '.Row', '10': 'rows'},
    const {'1': 'config', '3': 4, '4': 1, '5': 11, '6': '.TestGroup', '10': 'config'},
    const {'1': 'last_time_updated', '3': 6, '4': 1, '5': 1, '10': 'lastTimeUpdated'},
    const {'1': 'update_info', '3': 8, '4': 3, '5': 11, '6': '.UpdateInfo', '10': 'updateInfo'},
    const {'1': 'test_metadata', '3': 9, '4': 3, '5': 11, '6': '.TestMetadata', '10': 'testMetadata'},
    const {'1': 'cluster', '3': 10, '4': 3, '5': 11, '6': '.Cluster', '10': 'cluster'},
    const {'1': 'most_recent_cluster_timestamp', '3': 11, '4': 1, '5': 1, '10': 'mostRecentClusterTimestamp'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
    const {'1': 5, '2': 6},
    const {'1': 7, '2': 8},
  ],
};

/// Descriptor for `Grid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gridDescriptor = $convert.base64Decode('CgRHcmlkEiEKB2NvbHVtbnMYASADKAsyBy5Db2x1bW5SB2NvbHVtbnMSGAoEcm93cxgCIAMoCzIELlJvd1IEcm93cxIiCgZjb25maWcYBCABKAsyCi5UZXN0R3JvdXBSBmNvbmZpZxIqChFsYXN0X3RpbWVfdXBkYXRlZBgGIAEoAVIPbGFzdFRpbWVVcGRhdGVkEiwKC3VwZGF0ZV9pbmZvGAggAygLMgsuVXBkYXRlSW5mb1IKdXBkYXRlSW5mbxIyCg10ZXN0X21ldGFkYXRhGAkgAygLMg0uVGVzdE1ldGFkYXRhUgx0ZXN0TWV0YWRhdGESIgoHY2x1c3RlchgKIAMoCzIILkNsdXN0ZXJSB2NsdXN0ZXISQQodbW9zdF9yZWNlbnRfY2x1c3Rlcl90aW1lc3RhbXAYCyABKAFSGm1vc3RSZWNlbnRDbHVzdGVyVGltZXN0YW1wSgQIAxAESgQIBRAGSgQIBxAI');
@$core.Deprecated('Use clusterDescriptor instead')
const Cluster$json = const {
  '1': 'Cluster',
  '2': const [
    const {'1': 'test_status', '3': 1, '4': 1, '5': 5, '10': 'testStatus'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'cluster_row', '3': 3, '4': 3, '5': 11, '6': '.ClusterRow', '10': 'clusterRow'},
  ],
};

/// Descriptor for `Cluster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterDescriptor = $convert.base64Decode('CgdDbHVzdGVyEh8KC3Rlc3Rfc3RhdHVzGAEgASgFUgp0ZXN0U3RhdHVzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USLAoLY2x1c3Rlcl9yb3cYAyADKAsyCy5DbHVzdGVyUm93UgpjbHVzdGVyUm93');
@$core.Deprecated('Use clusterRowDescriptor instead')
const ClusterRow$json = const {
  '1': 'ClusterRow',
  '2': const [
    const {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'index', '3': 2, '4': 3, '5': 5, '10': 'index'},
  ],
};

/// Descriptor for `ClusterRow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterRowDescriptor = $convert.base64Decode('CgpDbHVzdGVyUm93EiEKDGRpc3BsYXlfbmFtZRgBIAEoCVILZGlzcGxheU5hbWUSFAoFaW5kZXgYAiADKAVSBWluZGV4');
