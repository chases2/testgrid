///
//  Generated code. Do not modify.
//  source: pb/test_status/test_status.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use testStatusDescriptor instead')
const TestStatus$json = const {
  '1': 'TestStatus',
  '2': const [
    const {'1': 'NO_RESULT', '2': 0},
    const {'1': 'PASS', '2': 1},
    const {'1': 'PASS_WITH_ERRORS', '2': 2},
    const {'1': 'PASS_WITH_SKIPS', '2': 3},
    const {'1': 'RUNNING', '2': 4},
    const {'1': 'CATEGORIZED_ABORT', '2': 5},
    const {'1': 'UNKNOWN', '2': 6},
    const {'1': 'CANCEL', '2': 7},
    const {'1': 'BLOCKED', '2': 8},
    const {'1': 'TIMED_OUT', '2': 9},
    const {'1': 'CATEGORIZED_FAIL', '2': 10},
    const {'1': 'BUILD_FAIL', '2': 11},
    const {'1': 'FAIL', '2': 12},
    const {'1': 'FLAKY', '2': 13},
    const {'1': 'TOOL_FAIL', '2': 14},
    const {'1': 'BUILD_PASSED', '2': 15},
  ],
};

/// Descriptor for `TestStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testStatusDescriptor = $convert.base64Decode('CgpUZXN0U3RhdHVzEg0KCU5PX1JFU1VMVBAAEggKBFBBU1MQARIUChBQQVNTX1dJVEhfRVJST1JTEAISEwoPUEFTU19XSVRIX1NLSVBTEAMSCwoHUlVOTklORxAEEhUKEUNBVEVHT1JJWkVEX0FCT1JUEAUSCwoHVU5LTk9XThAGEgoKBkNBTkNFTBAHEgsKB0JMT0NLRUQQCBINCglUSU1FRF9PVVQQCRIUChBDQVRFR09SSVpFRF9GQUlMEAoSDgoKQlVJTERfRkFJTBALEggKBEZBSUwQDBIJCgVGTEFLWRANEg0KCVRPT0xfRkFJTBAOEhAKDEJVSUxEX1BBU1NFRBAP');
