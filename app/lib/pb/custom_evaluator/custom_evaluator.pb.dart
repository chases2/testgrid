///
//  Generated code. Do not modify.
//  source: pb/custom_evaluator/custom_evaluator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../test_status/test_status.pbenum.dart' as $3;
import 'custom_evaluator.pbenum.dart';

export 'custom_evaluator.pbenum.dart';

class RuleSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RuleSet', createEmptyInstance: create)
    ..pc<Rule>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: Rule.create)
    ..hasRequiredFields = false
  ;

  RuleSet._() : super();
  factory RuleSet({
    $core.Iterable<Rule>? rules,
  }) {
    final _result = create();
    if (rules != null) {
      _result.rules.addAll(rules);
    }
    return _result;
  }
  factory RuleSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RuleSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RuleSet clone() => RuleSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RuleSet copyWith(void Function(RuleSet) updates) => super.copyWith((message) => updates(message as RuleSet)) as RuleSet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RuleSet create() => RuleSet._();
  RuleSet createEmptyInstance() => create();
  static $pb.PbList<RuleSet> createRepeated() => $pb.PbList<RuleSet>();
  @$core.pragma('dart2js:noInline')
  static RuleSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RuleSet>(create);
  static RuleSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Rule> get rules => $_getList(0);
}

class Rule extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Rule', createEmptyInstance: create)
    ..pc<TestResultComparison>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testResultComparisons', $pb.PbFieldType.PM, subBuilder: TestResultComparison.create)
    ..e<$3.TestStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'computedStatus', $pb.PbFieldType.OE, defaultOrMaker: $3.TestStatus.NO_RESULT, valueOf: $3.TestStatus.valueOf, enumValues: $3.TestStatus.values)
    ..hasRequiredFields = false
  ;

  Rule._() : super();
  factory Rule({
    $core.Iterable<TestResultComparison>? testResultComparisons,
    $3.TestStatus? computedStatus,
  }) {
    final _result = create();
    if (testResultComparisons != null) {
      _result.testResultComparisons.addAll(testResultComparisons);
    }
    if (computedStatus != null) {
      _result.computedStatus = computedStatus;
    }
    return _result;
  }
  factory Rule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Rule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Rule clone() => Rule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Rule copyWith(void Function(Rule) updates) => super.copyWith((message) => updates(message as Rule)) as Rule; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Rule create() => Rule._();
  Rule createEmptyInstance() => create();
  static $pb.PbList<Rule> createRepeated() => $pb.PbList<Rule>();
  @$core.pragma('dart2js:noInline')
  static Rule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rule>(create);
  static Rule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestResultComparison> get testResultComparisons => $_getList(0);

  @$pb.TagNumber(3)
  $3.TestStatus get computedStatus => $_getN(1);
  @$pb.TagNumber(3)
  set computedStatus($3.TestStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasComputedStatus() => $_has(1);
  @$pb.TagNumber(3)
  void clearComputedStatus() => clearField(3);
}

enum TestResultComparison_TestResultInfo {
  propertyKey, 
  testResultField, 
  testResultErrorField, 
  notSet
}

class TestResultComparison extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TestResultComparison_TestResultInfo> _TestResultComparison_TestResultInfoByTag = {
    2 : TestResultComparison_TestResultInfo.propertyKey,
    3 : TestResultComparison_TestResultInfo.testResultField,
    4 : TestResultComparison_TestResultInfo.testResultErrorField,
    0 : TestResultComparison_TestResultInfo.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestResultComparison', createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOM<Comparison>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comparison', subBuilder: Comparison.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testResultField')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testResultErrorField')
    ..hasRequiredFields = false
  ;

  TestResultComparison._() : super();
  factory TestResultComparison({
    Comparison? comparison,
    $core.String? propertyKey,
    $core.String? testResultField,
    $core.String? testResultErrorField,
  }) {
    final _result = create();
    if (comparison != null) {
      _result.comparison = comparison;
    }
    if (propertyKey != null) {
      _result.propertyKey = propertyKey;
    }
    if (testResultField != null) {
      _result.testResultField = testResultField;
    }
    if (testResultErrorField != null) {
      _result.testResultErrorField = testResultErrorField;
    }
    return _result;
  }
  factory TestResultComparison.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestResultComparison.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestResultComparison clone() => TestResultComparison()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestResultComparison copyWith(void Function(TestResultComparison) updates) => super.copyWith((message) => updates(message as TestResultComparison)) as TestResultComparison; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestResultComparison create() => TestResultComparison._();
  TestResultComparison createEmptyInstance() => create();
  static $pb.PbList<TestResultComparison> createRepeated() => $pb.PbList<TestResultComparison>();
  @$core.pragma('dart2js:noInline')
  static TestResultComparison getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestResultComparison>(create);
  static TestResultComparison? _defaultInstance;

  TestResultComparison_TestResultInfo whichTestResultInfo() => _TestResultComparison_TestResultInfoByTag[$_whichOneof(0)]!;
  void clearTestResultInfo() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Comparison get comparison => $_getN(0);
  @$pb.TagNumber(1)
  set comparison(Comparison v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasComparison() => $_has(0);
  @$pb.TagNumber(1)
  void clearComparison() => clearField(1);
  @$pb.TagNumber(1)
  Comparison ensureComparison() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get propertyKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get testResultField => $_getSZ(2);
  @$pb.TagNumber(3)
  set testResultField($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTestResultField() => $_has(2);
  @$pb.TagNumber(3)
  void clearTestResultField() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get testResultErrorField => $_getSZ(3);
  @$pb.TagNumber(4)
  set testResultErrorField($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTestResultErrorField() => $_has(3);
  @$pb.TagNumber(4)
  void clearTestResultErrorField() => clearField(4);
}

enum Comparison_ComparisonValue {
  stringValue, 
  numericalValue, 
  notSet
}

class Comparison extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Comparison_ComparisonValue> _Comparison_ComparisonValueByTag = {
    2 : Comparison_ComparisonValue.stringValue,
    3 : Comparison_ComparisonValue.numericalValue,
    0 : Comparison_ComparisonValue.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Comparison', createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..e<Comparison_Operator>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'op', $pb.PbFieldType.OE, defaultOrMaker: Comparison_Operator.OP_UNKNOWN, valueOf: Comparison_Operator.valueOf, enumValues: Comparison_Operator.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stringValue')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numericalValue', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Comparison._() : super();
  factory Comparison({
    Comparison_Operator? op,
    $core.String? stringValue,
    $core.double? numericalValue,
  }) {
    final _result = create();
    if (op != null) {
      _result.op = op;
    }
    if (stringValue != null) {
      _result.stringValue = stringValue;
    }
    if (numericalValue != null) {
      _result.numericalValue = numericalValue;
    }
    return _result;
  }
  factory Comparison.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Comparison.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Comparison clone() => Comparison()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Comparison copyWith(void Function(Comparison) updates) => super.copyWith((message) => updates(message as Comparison)) as Comparison; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Comparison create() => Comparison._();
  Comparison createEmptyInstance() => create();
  static $pb.PbList<Comparison> createRepeated() => $pb.PbList<Comparison>();
  @$core.pragma('dart2js:noInline')
  static Comparison getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Comparison>(create);
  static Comparison? _defaultInstance;

  Comparison_ComparisonValue whichComparisonValue() => _Comparison_ComparisonValueByTag[$_whichOneof(0)]!;
  void clearComparisonValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Comparison_Operator get op => $_getN(0);
  @$pb.TagNumber(1)
  set op(Comparison_Operator v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearOp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get numericalValue => $_getN(2);
  @$pb.TagNumber(3)
  set numericalValue($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumericalValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumericalValue() => clearField(3);
}

