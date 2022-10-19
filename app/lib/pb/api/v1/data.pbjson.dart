///
//  Generated code. Do not modify.
//  source: pb/api/v1/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listDashboardRequestDescriptor instead')
const ListDashboardRequest$json = const {
  '1': 'ListDashboardRequest',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 9, '10': 'scope'},
  ],
};

/// Descriptor for `ListDashboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardRequestDescriptor = $convert.base64Decode('ChRMaXN0RGFzaGJvYXJkUmVxdWVzdBIUCgVzY29wZRgBIAEoCVIFc2NvcGU=');
@$core.Deprecated('Use listDashboardResponseDescriptor instead')
const ListDashboardResponse$json = const {
  '1': 'ListDashboardResponse',
  '2': const [
    const {'1': 'dashboards', '3': 1, '4': 3, '5': 11, '6': '.testgrid.api.v1.Resource', '10': 'dashboards'},
  ],
};

/// Descriptor for `ListDashboardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardResponseDescriptor = $convert.base64Decode('ChVMaXN0RGFzaGJvYXJkUmVzcG9uc2USOQoKZGFzaGJvYXJkcxgBIAMoCzIZLnRlc3RncmlkLmFwaS52MS5SZXNvdXJjZVIKZGFzaGJvYXJkcw==');
@$core.Deprecated('Use listDashboardGroupRequestDescriptor instead')
const ListDashboardGroupRequest$json = const {
  '1': 'ListDashboardGroupRequest',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 9, '10': 'scope'},
  ],
};

/// Descriptor for `ListDashboardGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardGroupRequestDescriptor = $convert.base64Decode('ChlMaXN0RGFzaGJvYXJkR3JvdXBSZXF1ZXN0EhQKBXNjb3BlGAEgASgJUgVzY29wZQ==');
@$core.Deprecated('Use listDashboardGroupResponseDescriptor instead')
const ListDashboardGroupResponse$json = const {
  '1': 'ListDashboardGroupResponse',
  '2': const [
    const {'1': 'dashboard_groups', '3': 1, '4': 3, '5': 11, '6': '.testgrid.api.v1.Resource', '10': 'dashboardGroups'},
  ],
};

/// Descriptor for `ListDashboardGroupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardGroupResponseDescriptor = $convert.base64Decode('ChpMaXN0RGFzaGJvYXJkR3JvdXBSZXNwb25zZRJEChBkYXNoYm9hcmRfZ3JvdXBzGAEgAygLMhkudGVzdGdyaWQuYXBpLnYxLlJlc291cmNlUg9kYXNoYm9hcmRHcm91cHM=');
@$core.Deprecated('Use listDashboardTabsRequestDescriptor instead')
const ListDashboardTabsRequest$json = const {
  '1': 'ListDashboardTabsRequest',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 9, '10': 'scope'},
    const {'1': 'dashboard', '3': 2, '4': 1, '5': 9, '10': 'dashboard'},
  ],
};

/// Descriptor for `ListDashboardTabsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardTabsRequestDescriptor = $convert.base64Decode('ChhMaXN0RGFzaGJvYXJkVGFic1JlcXVlc3QSFAoFc2NvcGUYASABKAlSBXNjb3BlEhwKCWRhc2hib2FyZBgCIAEoCVIJZGFzaGJvYXJk');
@$core.Deprecated('Use listDashboardTabsResponseDescriptor instead')
const ListDashboardTabsResponse$json = const {
  '1': 'ListDashboardTabsResponse',
  '2': const [
    const {'1': 'dashboard_tabs', '3': 1, '4': 3, '5': 11, '6': '.testgrid.api.v1.Resource', '10': 'dashboardTabs'},
  ],
};

/// Descriptor for `ListDashboardTabsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardTabsResponseDescriptor = $convert.base64Decode('ChlMaXN0RGFzaGJvYXJkVGFic1Jlc3BvbnNlEkAKDmRhc2hib2FyZF90YWJzGAEgAygLMhkudGVzdGdyaWQuYXBpLnYxLlJlc291cmNlUg1kYXNoYm9hcmRUYWJz');
@$core.Deprecated('Use getDashboardRequestDescriptor instead')
const GetDashboardRequest$json = const {
  '1': 'GetDashboardRequest',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 9, '10': 'scope'},
    const {'1': 'dashboard', '3': 2, '4': 1, '5': 9, '10': 'dashboard'},
  ],
};

/// Descriptor for `GetDashboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDashboardRequestDescriptor = $convert.base64Decode('ChNHZXREYXNoYm9hcmRSZXF1ZXN0EhQKBXNjb3BlGAEgASgJUgVzY29wZRIcCglkYXNoYm9hcmQYAiABKAlSCWRhc2hib2FyZA==');
@$core.Deprecated('Use getDashboardResponseDescriptor instead')
const GetDashboardResponse$json = const {
  '1': 'GetDashboardResponse',
  '2': const [
    const {'1': 'notifications', '3': 1, '4': 3, '5': 11, '6': '.Notification', '10': 'notifications'},
    const {'1': 'default_tab', '3': 2, '4': 1, '5': 9, '10': 'defaultTab'},
    const {'1': 'suppress_failing_tabs', '3': 3, '4': 1, '5': 8, '10': 'suppressFailingTabs'},
    const {'1': 'highlight_today', '3': 4, '4': 1, '5': 8, '10': 'highlightToday'},
  ],
};

/// Descriptor for `GetDashboardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDashboardResponseDescriptor = $convert.base64Decode('ChRHZXREYXNoYm9hcmRSZXNwb25zZRIzCg1ub3RpZmljYXRpb25zGAEgAygLMg0uTm90aWZpY2F0aW9uUg1ub3RpZmljYXRpb25zEh8KC2RlZmF1bHRfdGFiGAIgASgJUgpkZWZhdWx0VGFiEjIKFXN1cHByZXNzX2ZhaWxpbmdfdGFicxgDIAEoCFITc3VwcHJlc3NGYWlsaW5nVGFicxInCg9oaWdobGlnaHRfdG9kYXkYBCABKAhSDmhpZ2hsaWdodFRvZGF5');
@$core.Deprecated('Use getDashboardGroupRequestDescriptor instead')
const GetDashboardGroupRequest$json = const {
  '1': 'GetDashboardGroupRequest',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 9, '10': 'scope'},
    const {'1': 'dashboard_group', '3': 2, '4': 1, '5': 9, '10': 'dashboardGroup'},
  ],
};

/// Descriptor for `GetDashboardGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDashboardGroupRequestDescriptor = $convert.base64Decode('ChhHZXREYXNoYm9hcmRHcm91cFJlcXVlc3QSFAoFc2NvcGUYASABKAlSBXNjb3BlEicKD2Rhc2hib2FyZF9ncm91cBgCIAEoCVIOZGFzaGJvYXJkR3JvdXA=');
@$core.Deprecated('Use getDashboardGroupResponseDescriptor instead')
const GetDashboardGroupResponse$json = const {
  '1': 'GetDashboardGroupResponse',
  '2': const [
    const {'1': 'dashboards', '3': 1, '4': 3, '5': 11, '6': '.testgrid.api.v1.Resource', '10': 'dashboards'},
  ],
};

/// Descriptor for `GetDashboardGroupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDashboardGroupResponseDescriptor = $convert.base64Decode('ChlHZXREYXNoYm9hcmRHcm91cFJlc3BvbnNlEjkKCmRhc2hib2FyZHMYASADKAsyGS50ZXN0Z3JpZC5hcGkudjEuUmVzb3VyY2VSCmRhc2hib2FyZHM=');
@$core.Deprecated('Use listHeadersRequestDescriptor instead')
const ListHeadersRequest$json = const {
  '1': 'ListHeadersRequest',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 9, '10': 'scope'},
    const {'1': 'dashboard', '3': 2, '4': 1, '5': 9, '10': 'dashboard'},
    const {'1': 'tab', '3': 3, '4': 1, '5': 9, '10': 'tab'},
  ],
};

/// Descriptor for `ListHeadersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHeadersRequestDescriptor = $convert.base64Decode('ChJMaXN0SGVhZGVyc1JlcXVlc3QSFAoFc2NvcGUYASABKAlSBXNjb3BlEhwKCWRhc2hib2FyZBgCIAEoCVIJZGFzaGJvYXJkEhAKA3RhYhgDIAEoCVIDdGFi');
@$core.Deprecated('Use listHeadersResponseDescriptor instead')
const ListHeadersResponse$json = const {
  '1': 'ListHeadersResponse',
  '2': const [
    const {'1': 'headers', '3': 1, '4': 3, '5': 11, '6': '.testgrid.api.v1.ListHeadersResponse.Header', '10': 'headers'},
  ],
  '3': const [ListHeadersResponse_Header$json],
};

@$core.Deprecated('Use listHeadersResponseDescriptor instead')
const ListHeadersResponse_Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'build', '3': 1, '4': 1, '5': 9, '10': 'build'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'started', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'started'},
    const {'1': 'extra', '3': 4, '4': 3, '5': 9, '10': 'extra'},
    const {'1': 'hotlist_ids', '3': 5, '4': 1, '5': 9, '10': 'hotlistIds'},
  ],
};

/// Descriptor for `ListHeadersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHeadersResponseDescriptor = $convert.base64Decode('ChNMaXN0SGVhZGVyc1Jlc3BvbnNlEkUKB2hlYWRlcnMYASADKAsyKy50ZXN0Z3JpZC5hcGkudjEuTGlzdEhlYWRlcnNSZXNwb25zZS5IZWFkZXJSB2hlYWRlcnManwEKBkhlYWRlchIUCgVidWlsZBgBIAEoCVIFYnVpbGQSEgoEbmFtZRgCIAEoCVIEbmFtZRI0CgdzdGFydGVkGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIHc3RhcnRlZBIUCgVleHRyYRgEIAMoCVIFZXh0cmESHwoLaG90bGlzdF9pZHMYBSABKAlSCmhvdGxpc3RJZHM=');
@$core.Deprecated('Use listRowsRequestDescriptor instead')
const ListRowsRequest$json = const {
  '1': 'ListRowsRequest',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 1, '5': 9, '10': 'scope'},
    const {'1': 'dashboard', '3': 2, '4': 1, '5': 9, '10': 'dashboard'},
    const {'1': 'tab', '3': 3, '4': 1, '5': 9, '10': 'tab'},
  ],
};

/// Descriptor for `ListRowsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRowsRequestDescriptor = $convert.base64Decode('Cg9MaXN0Um93c1JlcXVlc3QSFAoFc2NvcGUYASABKAlSBXNjb3BlEhwKCWRhc2hib2FyZBgCIAEoCVIJZGFzaGJvYXJkEhAKA3RhYhgDIAEoCVIDdGFi');
@$core.Deprecated('Use listRowsResponseDescriptor instead')
const ListRowsResponse$json = const {
  '1': 'ListRowsResponse',
  '2': const [
    const {'1': 'rows', '3': 1, '4': 3, '5': 11, '6': '.testgrid.api.v1.ListRowsResponse.Row', '10': 'rows'},
  ],
  '3': const [ListRowsResponse_Row$json, ListRowsResponse_Cell$json],
};

@$core.Deprecated('Use listRowsResponseDescriptor instead')
const ListRowsResponse_Row$json = const {
  '1': 'Row',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'cells', '3': 2, '4': 3, '5': 11, '6': '.testgrid.api.v1.ListRowsResponse.Cell', '10': 'cells'},
    const {'1': 'issues', '3': 3, '4': 3, '5': 9, '10': 'issues'},
    const {'1': 'alert', '3': 4, '4': 1, '5': 11, '6': '.AlertInfo', '10': 'alert'},
  ],
};

@$core.Deprecated('Use listRowsResponseDescriptor instead')
const ListRowsResponse_Cell$json = const {
  '1': 'Cell',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 5, '10': 'result'},
    const {'1': 'cell_id', '3': 2, '4': 1, '5': 9, '10': 'cellId'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'icon', '3': 4, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `ListRowsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRowsResponseDescriptor = $convert.base64Decode('ChBMaXN0Um93c1Jlc3BvbnNlEjkKBHJvd3MYASADKAsyJS50ZXN0Z3JpZC5hcGkudjEuTGlzdFJvd3NSZXNwb25zZS5Sb3dSBHJvd3MakQEKA1JvdxISCgRuYW1lGAEgASgJUgRuYW1lEjwKBWNlbGxzGAIgAygLMiYudGVzdGdyaWQuYXBpLnYxLkxpc3RSb3dzUmVzcG9uc2UuQ2VsbFIFY2VsbHMSFgoGaXNzdWVzGAMgAygJUgZpc3N1ZXMSIAoFYWxlcnQYBCABKAsyCi5BbGVydEluZm9SBWFsZXJ0GmUKBENlbGwSFgoGcmVzdWx0GAEgASgFUgZyZXN1bHQSFwoHY2VsbF9pZBgCIAEoCVIGY2VsbElkEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2USEgoEaWNvbhgEIAEoCVIEaWNvbg==');
@$core.Deprecated('Use resourceDescriptor instead')
const Resource$json = const {
  '1': 'Resource',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'link', '3': 2, '4': 1, '5': 9, '10': 'link'},
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode('CghSZXNvdXJjZRISCgRuYW1lGAEgASgJUgRuYW1lEhIKBGxpbmsYAiABKAlSBGxpbms=');
