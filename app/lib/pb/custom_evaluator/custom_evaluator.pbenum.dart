///
//  Generated code. Do not modify.
//  source: pb/custom_evaluator/custom_evaluator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Comparison_Operator extends $pb.ProtobufEnum {
  static const Comparison_Operator OP_UNKNOWN = Comparison_Operator._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_UNKNOWN');
  static const Comparison_Operator OP_EQ = Comparison_Operator._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_EQ');
  static const Comparison_Operator OP_NE = Comparison_Operator._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_NE');
  static const Comparison_Operator OP_LT = Comparison_Operator._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_LT');
  static const Comparison_Operator OP_LE = Comparison_Operator._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_LE');
  static const Comparison_Operator OP_GT = Comparison_Operator._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_GT');
  static const Comparison_Operator OP_GE = Comparison_Operator._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_GE');
  static const Comparison_Operator OP_REGEX = Comparison_Operator._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_REGEX');
  static const Comparison_Operator OP_STARTS_WITH = Comparison_Operator._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_STARTS_WITH');
  static const Comparison_Operator OP_CONTAINS = Comparison_Operator._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OP_CONTAINS');

  static const $core.List<Comparison_Operator> values = <Comparison_Operator> [
    OP_UNKNOWN,
    OP_EQ,
    OP_NE,
    OP_LT,
    OP_LE,
    OP_GT,
    OP_GE,
    OP_REGEX,
    OP_STARTS_WITH,
    OP_CONTAINS,
  ];

  static final $core.Map<$core.int, Comparison_Operator> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Comparison_Operator? valueOf($core.int value) => _byValue[value];

  const Comparison_Operator._($core.int v, $core.String n) : super(v, n);
}

