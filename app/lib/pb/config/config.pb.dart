///
//  Generated code. Do not modify.
//  source: pb/config/config.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../custom_evaluator/custom_evaluator.pb.dart' as $4;

import 'config.pbenum.dart';

export 'config.pbenum.dart';

class TestNameConfig_NameElement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestNameConfig.NameElement', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'labels')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConfig')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildTarget')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testProperty')
    ..hasRequiredFields = false
  ;

  TestNameConfig_NameElement._() : super();
  factory TestNameConfig_NameElement({
    $core.String? labels,
    $core.String? targetConfig,
    $core.bool? buildTarget,
    $core.String? tags,
    $core.String? testProperty,
  }) {
    final _result = create();
    if (labels != null) {
      _result.labels = labels;
    }
    if (targetConfig != null) {
      _result.targetConfig = targetConfig;
    }
    if (buildTarget != null) {
      _result.buildTarget = buildTarget;
    }
    if (tags != null) {
      _result.tags = tags;
    }
    if (testProperty != null) {
      _result.testProperty = testProperty;
    }
    return _result;
  }
  factory TestNameConfig_NameElement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestNameConfig_NameElement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestNameConfig_NameElement clone() => TestNameConfig_NameElement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestNameConfig_NameElement copyWith(void Function(TestNameConfig_NameElement) updates) => super.copyWith((message) => updates(message as TestNameConfig_NameElement)) as TestNameConfig_NameElement; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestNameConfig_NameElement create() => TestNameConfig_NameElement._();
  TestNameConfig_NameElement createEmptyInstance() => create();
  static $pb.PbList<TestNameConfig_NameElement> createRepeated() => $pb.PbList<TestNameConfig_NameElement>();
  @$core.pragma('dart2js:noInline')
  static TestNameConfig_NameElement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestNameConfig_NameElement>(create);
  static TestNameConfig_NameElement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get labels => $_getSZ(0);
  @$pb.TagNumber(1)
  set labels($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabels() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabels() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get targetConfig => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetConfig($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetConfig() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get buildTarget => $_getBF(2);
  @$pb.TagNumber(3)
  set buildTarget($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBuildTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearBuildTarget() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tags => $_getSZ(3);
  @$pb.TagNumber(4)
  set tags($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTags() => $_has(3);
  @$pb.TagNumber(4)
  void clearTags() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get testProperty => $_getSZ(4);
  @$pb.TagNumber(5)
  set testProperty($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTestProperty() => $_has(4);
  @$pb.TagNumber(5)
  void clearTestProperty() => clearField(5);
}

class TestNameConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestNameConfig', createEmptyInstance: create)
    ..pc<TestNameConfig_NameElement>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nameElements', $pb.PbFieldType.PM, subBuilder: TestNameConfig_NameElement.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nameFormat')
    ..hasRequiredFields = false
  ;

  TestNameConfig._() : super();
  factory TestNameConfig({
    $core.Iterable<TestNameConfig_NameElement>? nameElements,
    $core.String? nameFormat,
  }) {
    final _result = create();
    if (nameElements != null) {
      _result.nameElements.addAll(nameElements);
    }
    if (nameFormat != null) {
      _result.nameFormat = nameFormat;
    }
    return _result;
  }
  factory TestNameConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestNameConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestNameConfig clone() => TestNameConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestNameConfig copyWith(void Function(TestNameConfig) updates) => super.copyWith((message) => updates(message as TestNameConfig)) as TestNameConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestNameConfig create() => TestNameConfig._();
  TestNameConfig createEmptyInstance() => create();
  static $pb.PbList<TestNameConfig> createRepeated() => $pb.PbList<TestNameConfig>();
  @$core.pragma('dart2js:noInline')
  static TestNameConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestNameConfig>(create);
  static TestNameConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestNameConfig_NameElement> get nameElements => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nameFormat => $_getSZ(1);
  @$pb.TagNumber(2)
  set nameFormat($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNameFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearNameFormat() => clearField(2);
}

class Notification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Notification', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summary')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contextLink')
    ..hasRequiredFields = false
  ;

  Notification._() : super();
  factory Notification({
    $core.String? summary,
    $core.String? contextLink,
  }) {
    final _result = create();
    if (summary != null) {
      _result.summary = summary;
    }
    if (contextLink != null) {
      _result.contextLink = contextLink;
    }
    return _result;
  }
  factory Notification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notification clone() => Notification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notification copyWith(void Function(Notification) updates) => super.copyWith((message) => updates(message as Notification)) as Notification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  Notification createEmptyInstance() => create();
  static $pb.PbList<Notification> createRepeated() => $pb.PbList<Notification>();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get summary => $_getSZ(0);
  @$pb.TagNumber(1)
  set summary($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummary() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contextLink => $_getSZ(1);
  @$pb.TagNumber(2)
  set contextLink($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContextLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearContextLink() => clearField(2);
}

class TestGroup_ColumnHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestGroup.ColumnHeader', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'property')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configurationValue')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listAllValues')
    ..hasRequiredFields = false
  ;

  TestGroup_ColumnHeader._() : super();
  factory TestGroup_ColumnHeader({
    $core.String? label,
    $core.String? property,
    $core.String? configurationValue,
    $core.bool? listAllValues,
  }) {
    final _result = create();
    if (label != null) {
      _result.label = label;
    }
    if (property != null) {
      _result.property = property;
    }
    if (configurationValue != null) {
      _result.configurationValue = configurationValue;
    }
    if (listAllValues != null) {
      _result.listAllValues = listAllValues;
    }
    return _result;
  }
  factory TestGroup_ColumnHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestGroup_ColumnHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestGroup_ColumnHeader clone() => TestGroup_ColumnHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestGroup_ColumnHeader copyWith(void Function(TestGroup_ColumnHeader) updates) => super.copyWith((message) => updates(message as TestGroup_ColumnHeader)) as TestGroup_ColumnHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestGroup_ColumnHeader create() => TestGroup_ColumnHeader._();
  TestGroup_ColumnHeader createEmptyInstance() => create();
  static $pb.PbList<TestGroup_ColumnHeader> createRepeated() => $pb.PbList<TestGroup_ColumnHeader>();
  @$core.pragma('dart2js:noInline')
  static TestGroup_ColumnHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestGroup_ColumnHeader>(create);
  static TestGroup_ColumnHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get property => $_getSZ(1);
  @$pb.TagNumber(2)
  set property($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get configurationValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set configurationValue($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConfigurationValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfigurationValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get listAllValues => $_getBF(3);
  @$pb.TagNumber(4)
  set listAllValues($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasListAllValues() => $_has(3);
  @$pb.TagNumber(4)
  void clearListAllValues() => clearField(4);
}

enum TestGroup_TestAnnotation_ShortTextMessageSource {
  propertyName, 
  notSet
}

class TestGroup_TestAnnotation extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TestGroup_TestAnnotation_ShortTextMessageSource> _TestGroup_TestAnnotation_ShortTextMessageSourceByTag = {
    2 : TestGroup_TestAnnotation_ShortTextMessageSource.propertyName,
    0 : TestGroup_TestAnnotation_ShortTextMessageSource.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestGroup.TestAnnotation', createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shortText')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyName')
    ..hasRequiredFields = false
  ;

  TestGroup_TestAnnotation._() : super();
  factory TestGroup_TestAnnotation({
    $core.String? shortText,
    $core.String? propertyName,
  }) {
    final _result = create();
    if (shortText != null) {
      _result.shortText = shortText;
    }
    if (propertyName != null) {
      _result.propertyName = propertyName;
    }
    return _result;
  }
  factory TestGroup_TestAnnotation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestGroup_TestAnnotation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestGroup_TestAnnotation clone() => TestGroup_TestAnnotation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestGroup_TestAnnotation copyWith(void Function(TestGroup_TestAnnotation) updates) => super.copyWith((message) => updates(message as TestGroup_TestAnnotation)) as TestGroup_TestAnnotation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestGroup_TestAnnotation create() => TestGroup_TestAnnotation._();
  TestGroup_TestAnnotation createEmptyInstance() => create();
  static $pb.PbList<TestGroup_TestAnnotation> createRepeated() => $pb.PbList<TestGroup_TestAnnotation>();
  @$core.pragma('dart2js:noInline')
  static TestGroup_TestAnnotation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestGroup_TestAnnotation>(create);
  static TestGroup_TestAnnotation? _defaultInstance;

  TestGroup_TestAnnotation_ShortTextMessageSource whichShortTextMessageSource() => _TestGroup_TestAnnotation_ShortTextMessageSourceByTag[$_whichOneof(0)]!;
  void clearShortTextMessageSource() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get shortText => $_getSZ(0);
  @$pb.TagNumber(1)
  set shortText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortText() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortText() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get propertyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyName() => clearField(2);
}

class TestGroup_KeyValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestGroup.KeyValue', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  TestGroup_KeyValue._() : super();
  factory TestGroup_KeyValue({
    $core.String? key,
    $core.String? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory TestGroup_KeyValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestGroup_KeyValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestGroup_KeyValue clone() => TestGroup_KeyValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestGroup_KeyValue copyWith(void Function(TestGroup_KeyValue) updates) => super.copyWith((message) => updates(message as TestGroup_KeyValue)) as TestGroup_KeyValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestGroup_KeyValue create() => TestGroup_KeyValue._();
  TestGroup_KeyValue createEmptyInstance() => create();
  static $pb.PbList<TestGroup_KeyValue> createRepeated() => $pb.PbList<TestGroup_KeyValue>();
  @$core.pragma('dart2js:noInline')
  static TestGroup_KeyValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestGroup_KeyValue>(create);
  static TestGroup_KeyValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

enum TestGroup_ResultSource_ResultSourceConfig {
  gcsConfig, 
  notSet
}

class TestGroup_ResultSource extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TestGroup_ResultSource_ResultSourceConfig> _TestGroup_ResultSource_ResultSourceConfigByTag = {
    2 : TestGroup_ResultSource_ResultSourceConfig.gcsConfig,
    0 : TestGroup_ResultSource_ResultSourceConfig.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestGroup.ResultSource', createEmptyInstance: create)
    ..oo(0, [2])
    ..aOM<GCSConfig>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gcsConfig', subBuilder: GCSConfig.create)
    ..hasRequiredFields = false
  ;

  TestGroup_ResultSource._() : super();
  factory TestGroup_ResultSource({
    GCSConfig? gcsConfig,
  }) {
    final _result = create();
    if (gcsConfig != null) {
      _result.gcsConfig = gcsConfig;
    }
    return _result;
  }
  factory TestGroup_ResultSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestGroup_ResultSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestGroup_ResultSource clone() => TestGroup_ResultSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestGroup_ResultSource copyWith(void Function(TestGroup_ResultSource) updates) => super.copyWith((message) => updates(message as TestGroup_ResultSource)) as TestGroup_ResultSource; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestGroup_ResultSource create() => TestGroup_ResultSource._();
  TestGroup_ResultSource createEmptyInstance() => create();
  static $pb.PbList<TestGroup_ResultSource> createRepeated() => $pb.PbList<TestGroup_ResultSource>();
  @$core.pragma('dart2js:noInline')
  static TestGroup_ResultSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestGroup_ResultSource>(create);
  static TestGroup_ResultSource? _defaultInstance;

  TestGroup_ResultSource_ResultSourceConfig whichResultSourceConfig() => _TestGroup_ResultSource_ResultSourceConfigByTag[$_whichOneof(0)]!;
  void clearResultSourceConfig() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  GCSConfig get gcsConfig => $_getN(0);
  @$pb.TagNumber(2)
  set gcsConfig(GCSConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGcsConfig() => $_has(0);
  @$pb.TagNumber(2)
  void clearGcsConfig() => clearField(2);
  @$pb.TagNumber(2)
  GCSConfig ensureGcsConfig() => $_ensure(0);
}

class TestGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestGroup', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gcsPrefix')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'daysOfResults', $pb.PbFieldType.O3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignorePending')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreBuilt')
    ..e<TestGroup_TestsName>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testsNamePolicy', $pb.PbFieldType.OE, defaultOrMaker: TestGroup_TestsName.TESTS_NAME_UNSPECIFIED, valueOf: TestGroup_TestsName.valueOf, enumValues: TestGroup_TestsName.values)
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreTestSubstring')
    ..pc<TestGroup_ColumnHeader>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'columnHeader', $pb.PbFieldType.PM, subBuilder: TestGroup_ColumnHeader.create)
    ..e<TestGroup_FallbackGrouping>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fallbackGrouping', $pb.PbFieldType.OE, defaultOrMaker: TestGroup_FallbackGrouping.FALLBACK_GROUPING_NONE, valueOf: TestGroup_FallbackGrouping.valueOf, enumValues: TestGroup_FallbackGrouping.values)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertStaleResultsHours', $pb.PbFieldType.O3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numFailuresToAlert', $pb.PbFieldType.O3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bugComponent', $pb.PbFieldType.O3)
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeSearchPath')
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numColumnsRecent', $pb.PbFieldType.O3)
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useTestMetadata')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailToAddresses')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailSubject')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailFailureMessage')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailDebugUrl')
    ..a<$core.int>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minElapsedMinutesBetweenMails', $pb.PbFieldType.O3)
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableFlakyStatus')
    ..aOB(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useKubernetesClient')
    ..aOB(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isExternal')
    ..aOM<TestNameConfig>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testNameConfig', subBuilder: TestNameConfig.create)
    ..pc<Notification>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifications', $pb.PbFieldType.PM, subBuilder: Notification.create)
    ..e<TestGroup_PrimaryGrouping>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primaryGrouping', $pb.PbFieldType.OE, defaultOrMaker: TestGroup_PrimaryGrouping.PRIMARY_GROUPING_NONE, valueOf: TestGroup_PrimaryGrouping.valueOf, enumValues: TestGroup_PrimaryGrouping.values)
    ..aOB(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableTestMethods')
    ..pc<TestGroup_TestAnnotation>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testAnnotations', $pb.PbFieldType.PM, subBuilder: TestGroup_TestAnnotation.create)
    ..a<$core.int>(32, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxTestMethodsPerTest', $pb.PbFieldType.O3)
    ..pc<TestMetadataOptions>(34, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testMetadataOptions', $pb.PbFieldType.PM, subBuilder: TestMetadataOptions.create)
    ..aOS(35, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testTagPattern')
    ..aOM<AutoBugOptions>(36, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoBugOptions', subBuilder: AutoBugOptions.create)
    ..a<$core.int>(37, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxTestRuntimeHours', $pb.PbFieldType.O3)
    ..a<$core.int>(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numPassesToDisableAlert', $pb.PbFieldType.O3)
    ..aOB(39, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkBugsByGroup')
    ..pc<TestGroup_KeyValue>(41, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testMethodProperties', $pb.PbFieldType.PM, subBuilder: TestGroup_KeyValue.create)
    ..aOB(42, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gatherBugs')
    ..aOS(43, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shortTextMetric')
    ..aOS(44, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildOverrideConfigurationValue')
    ..aOB(45, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkBugsByTestMethods')
    ..aOS(46, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testMethodMatchRegex')
    ..aOB(47, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useFullMethodNames')
    ..aOS(49, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fallbackGroupingConfigurationValue')
    ..aOM<TestGroup_ResultSource>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultSource', subBuilder: TestGroup_ResultSource.create)
    ..aOM<$4.RuleSet>(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customEvaluatorRuleSet', subBuilder: $4.RuleSet.create)
    ..aOB(52, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'readStateFromStorage')
    ..aOB(53, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreOldResults')
    ..aOB(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreSkip')
    ..aOS(55, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildOverrideStrftime')
    ..aOS(56, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userProperty')
    ..aOB(60, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableMergedStatus')
    ..aOS(61, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testMethodUnmatchRegex')
    ..aOB(62, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableProwjobAnalysis')
    ..hasRequiredFields = false
  ;

  TestGroup._() : super();
  factory TestGroup({
    $core.String? name,
    $core.String? gcsPrefix,
    $core.int? daysOfResults,
    $core.bool? ignorePending,
    $core.bool? ignoreBuilt,
    TestGroup_TestsName? testsNamePolicy,
    $core.Iterable<$core.String>? ignoreTestSubstring,
    $core.Iterable<TestGroup_ColumnHeader>? columnHeader,
    TestGroup_FallbackGrouping? fallbackGrouping,
  @$core.Deprecated('This field is deprecated.')
    $core.int? alertStaleResultsHours,
  @$core.Deprecated('This field is deprecated.')
    $core.int? numFailuresToAlert,
  @$core.Deprecated('This field is deprecated.')
    $core.int? bugComponent,
    $core.String? codeSearchPath,
    $core.int? numColumnsRecent,
    $core.bool? useTestMetadata,
  @$core.Deprecated('This field is deprecated.')
    $core.String? alertMailToAddresses,
  @$core.Deprecated('This field is deprecated.')
    $core.String? alertMailSubject,
  @$core.Deprecated('This field is deprecated.')
    $core.String? alertMailFailureMessage,
  @$core.Deprecated('This field is deprecated.')
    $core.String? alertMailDebugUrl,
  @$core.Deprecated('This field is deprecated.')
    $core.int? minElapsedMinutesBetweenMails,
    $core.bool? enableFlakyStatus,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? useKubernetesClient,
    $core.bool? isExternal,
    TestNameConfig? testNameConfig,
    $core.Iterable<Notification>? notifications,
    TestGroup_PrimaryGrouping? primaryGrouping,
    $core.bool? enableTestMethods,
    $core.Iterable<TestGroup_TestAnnotation>? testAnnotations,
    $core.int? maxTestMethodsPerTest,
    $core.Iterable<TestMetadataOptions>? testMetadataOptions,
    $core.String? testTagPattern,
  @$core.Deprecated('This field is deprecated.')
    AutoBugOptions? autoBugOptions,
    $core.int? maxTestRuntimeHours,
    $core.int? numPassesToDisableAlert,
    $core.bool? linkBugsByGroup,
    $core.Iterable<TestGroup_KeyValue>? testMethodProperties,
    $core.bool? gatherBugs,
    $core.String? shortTextMetric,
    $core.String? buildOverrideConfigurationValue,
    $core.bool? linkBugsByTestMethods,
    $core.String? testMethodMatchRegex,
    $core.bool? useFullMethodNames,
    $core.String? fallbackGroupingConfigurationValue,
    TestGroup_ResultSource? resultSource,
    $4.RuleSet? customEvaluatorRuleSet,
    $core.bool? readStateFromStorage,
    $core.bool? ignoreOldResults,
    $core.bool? ignoreSkip,
    $core.String? buildOverrideStrftime,
    $core.String? userProperty,
    $core.bool? disableMergedStatus,
    $core.String? testMethodUnmatchRegex,
    $core.bool? disableProwjobAnalysis,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (gcsPrefix != null) {
      _result.gcsPrefix = gcsPrefix;
    }
    if (daysOfResults != null) {
      _result.daysOfResults = daysOfResults;
    }
    if (ignorePending != null) {
      _result.ignorePending = ignorePending;
    }
    if (ignoreBuilt != null) {
      _result.ignoreBuilt = ignoreBuilt;
    }
    if (testsNamePolicy != null) {
      _result.testsNamePolicy = testsNamePolicy;
    }
    if (ignoreTestSubstring != null) {
      _result.ignoreTestSubstring.addAll(ignoreTestSubstring);
    }
    if (columnHeader != null) {
      _result.columnHeader.addAll(columnHeader);
    }
    if (fallbackGrouping != null) {
      _result.fallbackGrouping = fallbackGrouping;
    }
    if (alertStaleResultsHours != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.alertStaleResultsHours = alertStaleResultsHours;
    }
    if (numFailuresToAlert != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.numFailuresToAlert = numFailuresToAlert;
    }
    if (bugComponent != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.bugComponent = bugComponent;
    }
    if (codeSearchPath != null) {
      _result.codeSearchPath = codeSearchPath;
    }
    if (numColumnsRecent != null) {
      _result.numColumnsRecent = numColumnsRecent;
    }
    if (useTestMetadata != null) {
      _result.useTestMetadata = useTestMetadata;
    }
    if (alertMailToAddresses != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.alertMailToAddresses = alertMailToAddresses;
    }
    if (alertMailSubject != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.alertMailSubject = alertMailSubject;
    }
    if (alertMailFailureMessage != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.alertMailFailureMessage = alertMailFailureMessage;
    }
    if (alertMailDebugUrl != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.alertMailDebugUrl = alertMailDebugUrl;
    }
    if (minElapsedMinutesBetweenMails != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.minElapsedMinutesBetweenMails = minElapsedMinutesBetweenMails;
    }
    if (enableFlakyStatus != null) {
      _result.enableFlakyStatus = enableFlakyStatus;
    }
    if (useKubernetesClient != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.useKubernetesClient = useKubernetesClient;
    }
    if (isExternal != null) {
      _result.isExternal = isExternal;
    }
    if (testNameConfig != null) {
      _result.testNameConfig = testNameConfig;
    }
    if (notifications != null) {
      _result.notifications.addAll(notifications);
    }
    if (primaryGrouping != null) {
      _result.primaryGrouping = primaryGrouping;
    }
    if (enableTestMethods != null) {
      _result.enableTestMethods = enableTestMethods;
    }
    if (testAnnotations != null) {
      _result.testAnnotations.addAll(testAnnotations);
    }
    if (maxTestMethodsPerTest != null) {
      _result.maxTestMethodsPerTest = maxTestMethodsPerTest;
    }
    if (testMetadataOptions != null) {
      _result.testMetadataOptions.addAll(testMetadataOptions);
    }
    if (testTagPattern != null) {
      _result.testTagPattern = testTagPattern;
    }
    if (autoBugOptions != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.autoBugOptions = autoBugOptions;
    }
    if (maxTestRuntimeHours != null) {
      _result.maxTestRuntimeHours = maxTestRuntimeHours;
    }
    if (numPassesToDisableAlert != null) {
      _result.numPassesToDisableAlert = numPassesToDisableAlert;
    }
    if (linkBugsByGroup != null) {
      _result.linkBugsByGroup = linkBugsByGroup;
    }
    if (testMethodProperties != null) {
      _result.testMethodProperties.addAll(testMethodProperties);
    }
    if (gatherBugs != null) {
      _result.gatherBugs = gatherBugs;
    }
    if (shortTextMetric != null) {
      _result.shortTextMetric = shortTextMetric;
    }
    if (buildOverrideConfigurationValue != null) {
      _result.buildOverrideConfigurationValue = buildOverrideConfigurationValue;
    }
    if (linkBugsByTestMethods != null) {
      _result.linkBugsByTestMethods = linkBugsByTestMethods;
    }
    if (testMethodMatchRegex != null) {
      _result.testMethodMatchRegex = testMethodMatchRegex;
    }
    if (useFullMethodNames != null) {
      _result.useFullMethodNames = useFullMethodNames;
    }
    if (fallbackGroupingConfigurationValue != null) {
      _result.fallbackGroupingConfigurationValue = fallbackGroupingConfigurationValue;
    }
    if (resultSource != null) {
      _result.resultSource = resultSource;
    }
    if (customEvaluatorRuleSet != null) {
      _result.customEvaluatorRuleSet = customEvaluatorRuleSet;
    }
    if (readStateFromStorage != null) {
      _result.readStateFromStorage = readStateFromStorage;
    }
    if (ignoreOldResults != null) {
      _result.ignoreOldResults = ignoreOldResults;
    }
    if (ignoreSkip != null) {
      _result.ignoreSkip = ignoreSkip;
    }
    if (buildOverrideStrftime != null) {
      _result.buildOverrideStrftime = buildOverrideStrftime;
    }
    if (userProperty != null) {
      _result.userProperty = userProperty;
    }
    if (disableMergedStatus != null) {
      _result.disableMergedStatus = disableMergedStatus;
    }
    if (testMethodUnmatchRegex != null) {
      _result.testMethodUnmatchRegex = testMethodUnmatchRegex;
    }
    if (disableProwjobAnalysis != null) {
      _result.disableProwjobAnalysis = disableProwjobAnalysis;
    }
    return _result;
  }
  factory TestGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestGroup clone() => TestGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestGroup copyWith(void Function(TestGroup) updates) => super.copyWith((message) => updates(message as TestGroup)) as TestGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestGroup create() => TestGroup._();
  TestGroup createEmptyInstance() => create();
  static $pb.PbList<TestGroup> createRepeated() => $pb.PbList<TestGroup>();
  @$core.pragma('dart2js:noInline')
  static TestGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestGroup>(create);
  static TestGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gcsPrefix => $_getSZ(1);
  @$pb.TagNumber(2)
  set gcsPrefix($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGcsPrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearGcsPrefix() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get daysOfResults => $_getIZ(2);
  @$pb.TagNumber(3)
  set daysOfResults($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDaysOfResults() => $_has(2);
  @$pb.TagNumber(3)
  void clearDaysOfResults() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get ignorePending => $_getBF(3);
  @$pb.TagNumber(4)
  set ignorePending($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIgnorePending() => $_has(3);
  @$pb.TagNumber(4)
  void clearIgnorePending() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get ignoreBuilt => $_getBF(4);
  @$pb.TagNumber(5)
  set ignoreBuilt($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIgnoreBuilt() => $_has(4);
  @$pb.TagNumber(5)
  void clearIgnoreBuilt() => clearField(5);

  @$pb.TagNumber(6)
  TestGroup_TestsName get testsNamePolicy => $_getN(5);
  @$pb.TagNumber(6)
  set testsNamePolicy(TestGroup_TestsName v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTestsNamePolicy() => $_has(5);
  @$pb.TagNumber(6)
  void clearTestsNamePolicy() => clearField(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get ignoreTestSubstring => $_getList(6);

  @$pb.TagNumber(9)
  $core.List<TestGroup_ColumnHeader> get columnHeader => $_getList(7);

  @$pb.TagNumber(10)
  TestGroup_FallbackGrouping get fallbackGrouping => $_getN(8);
  @$pb.TagNumber(10)
  set fallbackGrouping(TestGroup_FallbackGrouping v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasFallbackGrouping() => $_has(8);
  @$pb.TagNumber(10)
  void clearFallbackGrouping() => clearField(10);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.int get alertStaleResultsHours => $_getIZ(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  set alertStaleResultsHours($core.int v) { $_setSignedInt32(9, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool hasAlertStaleResultsHours() => $_has(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  void clearAlertStaleResultsHours() => clearField(11);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.int get numFailuresToAlert => $_getIZ(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  set numFailuresToAlert($core.int v) { $_setSignedInt32(10, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.bool hasNumFailuresToAlert() => $_has(10);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  void clearNumFailuresToAlert() => clearField(12);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.int get bugComponent => $_getIZ(11);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  set bugComponent($core.int v) { $_setSignedInt32(11, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  $core.bool hasBugComponent() => $_has(11);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(13)
  void clearBugComponent() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get codeSearchPath => $_getSZ(12);
  @$pb.TagNumber(14)
  set codeSearchPath($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasCodeSearchPath() => $_has(12);
  @$pb.TagNumber(14)
  void clearCodeSearchPath() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get numColumnsRecent => $_getIZ(13);
  @$pb.TagNumber(15)
  set numColumnsRecent($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasNumColumnsRecent() => $_has(13);
  @$pb.TagNumber(15)
  void clearNumColumnsRecent() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get useTestMetadata => $_getBF(14);
  @$pb.TagNumber(16)
  set useTestMetadata($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasUseTestMetadata() => $_has(14);
  @$pb.TagNumber(16)
  void clearUseTestMetadata() => clearField(16);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  $core.String get alertMailToAddresses => $_getSZ(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  set alertMailToAddresses($core.String v) { $_setString(15, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  $core.bool hasAlertMailToAddresses() => $_has(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(17)
  void clearAlertMailToAddresses() => clearField(17);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  $core.String get alertMailSubject => $_getSZ(16);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  set alertMailSubject($core.String v) { $_setString(16, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  $core.bool hasAlertMailSubject() => $_has(16);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  void clearAlertMailSubject() => clearField(18);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(19)
  $core.String get alertMailFailureMessage => $_getSZ(17);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(19)
  set alertMailFailureMessage($core.String v) { $_setString(17, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(19)
  $core.bool hasAlertMailFailureMessage() => $_has(17);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(19)
  void clearAlertMailFailureMessage() => clearField(19);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  $core.String get alertMailDebugUrl => $_getSZ(18);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  set alertMailDebugUrl($core.String v) { $_setString(18, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  $core.bool hasAlertMailDebugUrl() => $_has(18);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  void clearAlertMailDebugUrl() => clearField(20);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  $core.int get minElapsedMinutesBetweenMails => $_getIZ(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  set minElapsedMinutesBetweenMails($core.int v) { $_setSignedInt32(19, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  $core.bool hasMinElapsedMinutesBetweenMails() => $_has(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  void clearMinElapsedMinutesBetweenMails() => clearField(21);

  @$pb.TagNumber(23)
  $core.bool get enableFlakyStatus => $_getBF(20);
  @$pb.TagNumber(23)
  set enableFlakyStatus($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(23)
  $core.bool hasEnableFlakyStatus() => $_has(20);
  @$pb.TagNumber(23)
  void clearEnableFlakyStatus() => clearField(23);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(24)
  $core.bool get useKubernetesClient => $_getBF(21);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(24)
  set useKubernetesClient($core.bool v) { $_setBool(21, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(24)
  $core.bool hasUseKubernetesClient() => $_has(21);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(24)
  void clearUseKubernetesClient() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get isExternal => $_getBF(22);
  @$pb.TagNumber(25)
  set isExternal($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(25)
  $core.bool hasIsExternal() => $_has(22);
  @$pb.TagNumber(25)
  void clearIsExternal() => clearField(25);

  @$pb.TagNumber(26)
  TestNameConfig get testNameConfig => $_getN(23);
  @$pb.TagNumber(26)
  set testNameConfig(TestNameConfig v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasTestNameConfig() => $_has(23);
  @$pb.TagNumber(26)
  void clearTestNameConfig() => clearField(26);
  @$pb.TagNumber(26)
  TestNameConfig ensureTestNameConfig() => $_ensure(23);

  @$pb.TagNumber(27)
  $core.List<Notification> get notifications => $_getList(24);

  @$pb.TagNumber(29)
  TestGroup_PrimaryGrouping get primaryGrouping => $_getN(25);
  @$pb.TagNumber(29)
  set primaryGrouping(TestGroup_PrimaryGrouping v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasPrimaryGrouping() => $_has(25);
  @$pb.TagNumber(29)
  void clearPrimaryGrouping() => clearField(29);

  @$pb.TagNumber(30)
  $core.bool get enableTestMethods => $_getBF(26);
  @$pb.TagNumber(30)
  set enableTestMethods($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(30)
  $core.bool hasEnableTestMethods() => $_has(26);
  @$pb.TagNumber(30)
  void clearEnableTestMethods() => clearField(30);

  @$pb.TagNumber(31)
  $core.List<TestGroup_TestAnnotation> get testAnnotations => $_getList(27);

  @$pb.TagNumber(32)
  $core.int get maxTestMethodsPerTest => $_getIZ(28);
  @$pb.TagNumber(32)
  set maxTestMethodsPerTest($core.int v) { $_setSignedInt32(28, v); }
  @$pb.TagNumber(32)
  $core.bool hasMaxTestMethodsPerTest() => $_has(28);
  @$pb.TagNumber(32)
  void clearMaxTestMethodsPerTest() => clearField(32);

  @$pb.TagNumber(34)
  $core.List<TestMetadataOptions> get testMetadataOptions => $_getList(29);

  @$pb.TagNumber(35)
  $core.String get testTagPattern => $_getSZ(30);
  @$pb.TagNumber(35)
  set testTagPattern($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(35)
  $core.bool hasTestTagPattern() => $_has(30);
  @$pb.TagNumber(35)
  void clearTestTagPattern() => clearField(35);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(36)
  AutoBugOptions get autoBugOptions => $_getN(31);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(36)
  set autoBugOptions(AutoBugOptions v) { setField(36, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(36)
  $core.bool hasAutoBugOptions() => $_has(31);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(36)
  void clearAutoBugOptions() => clearField(36);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(36)
  AutoBugOptions ensureAutoBugOptions() => $_ensure(31);

  @$pb.TagNumber(37)
  $core.int get maxTestRuntimeHours => $_getIZ(32);
  @$pb.TagNumber(37)
  set maxTestRuntimeHours($core.int v) { $_setSignedInt32(32, v); }
  @$pb.TagNumber(37)
  $core.bool hasMaxTestRuntimeHours() => $_has(32);
  @$pb.TagNumber(37)
  void clearMaxTestRuntimeHours() => clearField(37);

  @$pb.TagNumber(38)
  $core.int get numPassesToDisableAlert => $_getIZ(33);
  @$pb.TagNumber(38)
  set numPassesToDisableAlert($core.int v) { $_setSignedInt32(33, v); }
  @$pb.TagNumber(38)
  $core.bool hasNumPassesToDisableAlert() => $_has(33);
  @$pb.TagNumber(38)
  void clearNumPassesToDisableAlert() => clearField(38);

  @$pb.TagNumber(39)
  $core.bool get linkBugsByGroup => $_getBF(34);
  @$pb.TagNumber(39)
  set linkBugsByGroup($core.bool v) { $_setBool(34, v); }
  @$pb.TagNumber(39)
  $core.bool hasLinkBugsByGroup() => $_has(34);
  @$pb.TagNumber(39)
  void clearLinkBugsByGroup() => clearField(39);

  @$pb.TagNumber(41)
  $core.List<TestGroup_KeyValue> get testMethodProperties => $_getList(35);

  @$pb.TagNumber(42)
  $core.bool get gatherBugs => $_getBF(36);
  @$pb.TagNumber(42)
  set gatherBugs($core.bool v) { $_setBool(36, v); }
  @$pb.TagNumber(42)
  $core.bool hasGatherBugs() => $_has(36);
  @$pb.TagNumber(42)
  void clearGatherBugs() => clearField(42);

  @$pb.TagNumber(43)
  $core.String get shortTextMetric => $_getSZ(37);
  @$pb.TagNumber(43)
  set shortTextMetric($core.String v) { $_setString(37, v); }
  @$pb.TagNumber(43)
  $core.bool hasShortTextMetric() => $_has(37);
  @$pb.TagNumber(43)
  void clearShortTextMetric() => clearField(43);

  @$pb.TagNumber(44)
  $core.String get buildOverrideConfigurationValue => $_getSZ(38);
  @$pb.TagNumber(44)
  set buildOverrideConfigurationValue($core.String v) { $_setString(38, v); }
  @$pb.TagNumber(44)
  $core.bool hasBuildOverrideConfigurationValue() => $_has(38);
  @$pb.TagNumber(44)
  void clearBuildOverrideConfigurationValue() => clearField(44);

  @$pb.TagNumber(45)
  $core.bool get linkBugsByTestMethods => $_getBF(39);
  @$pb.TagNumber(45)
  set linkBugsByTestMethods($core.bool v) { $_setBool(39, v); }
  @$pb.TagNumber(45)
  $core.bool hasLinkBugsByTestMethods() => $_has(39);
  @$pb.TagNumber(45)
  void clearLinkBugsByTestMethods() => clearField(45);

  @$pb.TagNumber(46)
  $core.String get testMethodMatchRegex => $_getSZ(40);
  @$pb.TagNumber(46)
  set testMethodMatchRegex($core.String v) { $_setString(40, v); }
  @$pb.TagNumber(46)
  $core.bool hasTestMethodMatchRegex() => $_has(40);
  @$pb.TagNumber(46)
  void clearTestMethodMatchRegex() => clearField(46);

  @$pb.TagNumber(47)
  $core.bool get useFullMethodNames => $_getBF(41);
  @$pb.TagNumber(47)
  set useFullMethodNames($core.bool v) { $_setBool(41, v); }
  @$pb.TagNumber(47)
  $core.bool hasUseFullMethodNames() => $_has(41);
  @$pb.TagNumber(47)
  void clearUseFullMethodNames() => clearField(47);

  @$pb.TagNumber(49)
  $core.String get fallbackGroupingConfigurationValue => $_getSZ(42);
  @$pb.TagNumber(49)
  set fallbackGroupingConfigurationValue($core.String v) { $_setString(42, v); }
  @$pb.TagNumber(49)
  $core.bool hasFallbackGroupingConfigurationValue() => $_has(42);
  @$pb.TagNumber(49)
  void clearFallbackGroupingConfigurationValue() => clearField(49);

  @$pb.TagNumber(50)
  TestGroup_ResultSource get resultSource => $_getN(43);
  @$pb.TagNumber(50)
  set resultSource(TestGroup_ResultSource v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasResultSource() => $_has(43);
  @$pb.TagNumber(50)
  void clearResultSource() => clearField(50);
  @$pb.TagNumber(50)
  TestGroup_ResultSource ensureResultSource() => $_ensure(43);

  @$pb.TagNumber(51)
  $4.RuleSet get customEvaluatorRuleSet => $_getN(44);
  @$pb.TagNumber(51)
  set customEvaluatorRuleSet($4.RuleSet v) { setField(51, v); }
  @$pb.TagNumber(51)
  $core.bool hasCustomEvaluatorRuleSet() => $_has(44);
  @$pb.TagNumber(51)
  void clearCustomEvaluatorRuleSet() => clearField(51);
  @$pb.TagNumber(51)
  $4.RuleSet ensureCustomEvaluatorRuleSet() => $_ensure(44);

  @$pb.TagNumber(52)
  $core.bool get readStateFromStorage => $_getBF(45);
  @$pb.TagNumber(52)
  set readStateFromStorage($core.bool v) { $_setBool(45, v); }
  @$pb.TagNumber(52)
  $core.bool hasReadStateFromStorage() => $_has(45);
  @$pb.TagNumber(52)
  void clearReadStateFromStorage() => clearField(52);

  @$pb.TagNumber(53)
  $core.bool get ignoreOldResults => $_getBF(46);
  @$pb.TagNumber(53)
  set ignoreOldResults($core.bool v) { $_setBool(46, v); }
  @$pb.TagNumber(53)
  $core.bool hasIgnoreOldResults() => $_has(46);
  @$pb.TagNumber(53)
  void clearIgnoreOldResults() => clearField(53);

  @$pb.TagNumber(54)
  $core.bool get ignoreSkip => $_getBF(47);
  @$pb.TagNumber(54)
  set ignoreSkip($core.bool v) { $_setBool(47, v); }
  @$pb.TagNumber(54)
  $core.bool hasIgnoreSkip() => $_has(47);
  @$pb.TagNumber(54)
  void clearIgnoreSkip() => clearField(54);

  @$pb.TagNumber(55)
  $core.String get buildOverrideStrftime => $_getSZ(48);
  @$pb.TagNumber(55)
  set buildOverrideStrftime($core.String v) { $_setString(48, v); }
  @$pb.TagNumber(55)
  $core.bool hasBuildOverrideStrftime() => $_has(48);
  @$pb.TagNumber(55)
  void clearBuildOverrideStrftime() => clearField(55);

  @$pb.TagNumber(56)
  $core.String get userProperty => $_getSZ(49);
  @$pb.TagNumber(56)
  set userProperty($core.String v) { $_setString(49, v); }
  @$pb.TagNumber(56)
  $core.bool hasUserProperty() => $_has(49);
  @$pb.TagNumber(56)
  void clearUserProperty() => clearField(56);

  @$pb.TagNumber(60)
  $core.bool get disableMergedStatus => $_getBF(50);
  @$pb.TagNumber(60)
  set disableMergedStatus($core.bool v) { $_setBool(50, v); }
  @$pb.TagNumber(60)
  $core.bool hasDisableMergedStatus() => $_has(50);
  @$pb.TagNumber(60)
  void clearDisableMergedStatus() => clearField(60);

  @$pb.TagNumber(61)
  $core.String get testMethodUnmatchRegex => $_getSZ(51);
  @$pb.TagNumber(61)
  set testMethodUnmatchRegex($core.String v) { $_setString(51, v); }
  @$pb.TagNumber(61)
  $core.bool hasTestMethodUnmatchRegex() => $_has(51);
  @$pb.TagNumber(61)
  void clearTestMethodUnmatchRegex() => clearField(61);

  @$pb.TagNumber(62)
  $core.bool get disableProwjobAnalysis => $_getBF(52);
  @$pb.TagNumber(62)
  set disableProwjobAnalysis($core.bool v) { $_setBool(52, v); }
  @$pb.TagNumber(62)
  $core.bool hasDisableProwjobAnalysis() => $_has(52);
  @$pb.TagNumber(62)
  void clearDisableProwjobAnalysis() => clearField(62);
}

class GCSConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCSConfig', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gcsPrefix')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubsubProject')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubsubSubscription')
    ..hasRequiredFields = false
  ;

  GCSConfig._() : super();
  factory GCSConfig({
    $core.String? gcsPrefix,
    $core.String? pubsubProject,
    $core.String? pubsubSubscription,
  }) {
    final _result = create();
    if (gcsPrefix != null) {
      _result.gcsPrefix = gcsPrefix;
    }
    if (pubsubProject != null) {
      _result.pubsubProject = pubsubProject;
    }
    if (pubsubSubscription != null) {
      _result.pubsubSubscription = pubsubSubscription;
    }
    return _result;
  }
  factory GCSConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCSConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCSConfig clone() => GCSConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCSConfig copyWith(void Function(GCSConfig) updates) => super.copyWith((message) => updates(message as GCSConfig)) as GCSConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCSConfig create() => GCSConfig._();
  GCSConfig createEmptyInstance() => create();
  static $pb.PbList<GCSConfig> createRepeated() => $pb.PbList<GCSConfig>();
  @$core.pragma('dart2js:noInline')
  static GCSConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCSConfig>(create);
  static GCSConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gcsPrefix => $_getSZ(0);
  @$pb.TagNumber(1)
  set gcsPrefix($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGcsPrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearGcsPrefix() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubsubProject => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubsubProject($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubsubProject() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubsubProject() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pubsubSubscription => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubsubSubscription($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubsubSubscription() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubsubSubscription() => clearField(3);
}

class TestMetadataOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestMetadataOptions', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testNameRegex')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bugComponent', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cc')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageRegex')
    ..hasRequiredFields = false
  ;

  TestMetadataOptions._() : super();
  factory TestMetadataOptions({
    $core.String? testNameRegex,
    $core.int? bugComponent,
    $core.String? owner,
    $core.Iterable<$core.String>? cc,
    $core.String? messageRegex,
  }) {
    final _result = create();
    if (testNameRegex != null) {
      _result.testNameRegex = testNameRegex;
    }
    if (bugComponent != null) {
      _result.bugComponent = bugComponent;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (cc != null) {
      _result.cc.addAll(cc);
    }
    if (messageRegex != null) {
      _result.messageRegex = messageRegex;
    }
    return _result;
  }
  factory TestMetadataOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMetadataOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMetadataOptions clone() => TestMetadataOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMetadataOptions copyWith(void Function(TestMetadataOptions) updates) => super.copyWith((message) => updates(message as TestMetadataOptions)) as TestMetadataOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestMetadataOptions create() => TestMetadataOptions._();
  TestMetadataOptions createEmptyInstance() => create();
  static $pb.PbList<TestMetadataOptions> createRepeated() => $pb.PbList<TestMetadataOptions>();
  @$core.pragma('dart2js:noInline')
  static TestMetadataOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMetadataOptions>(create);
  static TestMetadataOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get testNameRegex => $_getSZ(0);
  @$pb.TagNumber(1)
  set testNameRegex($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTestNameRegex() => $_has(0);
  @$pb.TagNumber(1)
  void clearTestNameRegex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bugComponent => $_getIZ(1);
  @$pb.TagNumber(2)
  set bugComponent($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBugComponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearBugComponent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get owner => $_getSZ(2);
  @$pb.TagNumber(3)
  set owner($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwner() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwner() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get cc => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get messageRegex => $_getSZ(4);
  @$pb.TagNumber(5)
  set messageRegex($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessageRegex() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessageRegex() => clearField(5);
}

class AutoBugOptions_DefaultTestMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AutoBugOptions.DefaultTestMetadata', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bugComponent', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cc')
    ..hasRequiredFields = false
  ;

  AutoBugOptions_DefaultTestMetadata._() : super();
  factory AutoBugOptions_DefaultTestMetadata({
    $core.int? bugComponent,
    $core.String? owner,
    $core.Iterable<$core.String>? cc,
  }) {
    final _result = create();
    if (bugComponent != null) {
      _result.bugComponent = bugComponent;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (cc != null) {
      _result.cc.addAll(cc);
    }
    return _result;
  }
  factory AutoBugOptions_DefaultTestMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoBugOptions_DefaultTestMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AutoBugOptions_DefaultTestMetadata clone() => AutoBugOptions_DefaultTestMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AutoBugOptions_DefaultTestMetadata copyWith(void Function(AutoBugOptions_DefaultTestMetadata) updates) => super.copyWith((message) => updates(message as AutoBugOptions_DefaultTestMetadata)) as AutoBugOptions_DefaultTestMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoBugOptions_DefaultTestMetadata create() => AutoBugOptions_DefaultTestMetadata._();
  AutoBugOptions_DefaultTestMetadata createEmptyInstance() => create();
  static $pb.PbList<AutoBugOptions_DefaultTestMetadata> createRepeated() => $pb.PbList<AutoBugOptions_DefaultTestMetadata>();
  @$core.pragma('dart2js:noInline')
  static AutoBugOptions_DefaultTestMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoBugOptions_DefaultTestMetadata>(create);
  static AutoBugOptions_DefaultTestMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bugComponent => $_getIZ(0);
  @$pb.TagNumber(1)
  set bugComponent($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBugComponent() => $_has(0);
  @$pb.TagNumber(1)
  void clearBugComponent() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get owner => $_getSZ(1);
  @$pb.TagNumber(2)
  set owner($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get cc => $_getList(2);
}

class AutoBugOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AutoBugOptions', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoClose')
    ..p<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotlistIds', $pb.PbFieldType.K6)
    ..e<AutoBugOptions_Priority>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priority', $pb.PbFieldType.OE, defaultOrMaker: AutoBugOptions_Priority.PRIORITY_UNSPECIFIED, valueOf: AutoBugOptions_Priority.valueOf, enumValues: AutoBugOptions_Priority.values)
    ..pc<HotlistIdFromSource>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotlistIdsFromSource', $pb.PbFieldType.PM, subBuilder: HotlistIdFromSource.create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileIndividual')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'singletonAutobug')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxAllowedIndividualBugs', $pb.PbFieldType.O3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileOverall')
    ..aOM<AutoBugOptions_DefaultTestMetadata>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultTestMetadata', subBuilder: AutoBugOptions_DefaultTestMetadata.create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'betaAutobugComponent', $pb.PbFieldType.O3)
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'advancedTestMetadata')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileStale')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreOverall')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'note')
    ..hasRequiredFields = false
  ;

  AutoBugOptions._() : super();
  factory AutoBugOptions({
    $core.bool? autoClose,
    $core.Iterable<$fixnum.Int64>? hotlistIds,
    AutoBugOptions_Priority? priority,
  @$core.Deprecated('This field is deprecated.')
    $core.Iterable<HotlistIdFromSource>? hotlistIdsFromSource,
    $core.bool? fileIndividual,
    $core.bool? singletonAutobug,
    $core.int? maxAllowedIndividualBugs,
    $core.bool? fileOverall,
    AutoBugOptions_DefaultTestMetadata? defaultTestMetadata,
    $core.int? betaAutobugComponent,
    $core.bool? advancedTestMetadata,
    $core.bool? fileStale,
    $core.bool? ignoreOverall,
    $core.String? note,
  }) {
    final _result = create();
    if (autoClose != null) {
      _result.autoClose = autoClose;
    }
    if (hotlistIds != null) {
      _result.hotlistIds.addAll(hotlistIds);
    }
    if (priority != null) {
      _result.priority = priority;
    }
    if (hotlistIdsFromSource != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.hotlistIdsFromSource.addAll(hotlistIdsFromSource);
    }
    if (fileIndividual != null) {
      _result.fileIndividual = fileIndividual;
    }
    if (singletonAutobug != null) {
      _result.singletonAutobug = singletonAutobug;
    }
    if (maxAllowedIndividualBugs != null) {
      _result.maxAllowedIndividualBugs = maxAllowedIndividualBugs;
    }
    if (fileOverall != null) {
      _result.fileOverall = fileOverall;
    }
    if (defaultTestMetadata != null) {
      _result.defaultTestMetadata = defaultTestMetadata;
    }
    if (betaAutobugComponent != null) {
      _result.betaAutobugComponent = betaAutobugComponent;
    }
    if (advancedTestMetadata != null) {
      _result.advancedTestMetadata = advancedTestMetadata;
    }
    if (fileStale != null) {
      _result.fileStale = fileStale;
    }
    if (ignoreOverall != null) {
      _result.ignoreOverall = ignoreOverall;
    }
    if (note != null) {
      _result.note = note;
    }
    return _result;
  }
  factory AutoBugOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AutoBugOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AutoBugOptions clone() => AutoBugOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AutoBugOptions copyWith(void Function(AutoBugOptions) updates) => super.copyWith((message) => updates(message as AutoBugOptions)) as AutoBugOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AutoBugOptions create() => AutoBugOptions._();
  AutoBugOptions createEmptyInstance() => create();
  static $pb.PbList<AutoBugOptions> createRepeated() => $pb.PbList<AutoBugOptions>();
  @$core.pragma('dart2js:noInline')
  static AutoBugOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AutoBugOptions>(create);
  static AutoBugOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get autoClose => $_getBF(0);
  @$pb.TagNumber(1)
  set autoClose($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAutoClose() => $_has(0);
  @$pb.TagNumber(1)
  void clearAutoClose() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get hotlistIds => $_getList(1);

  @$pb.TagNumber(3)
  AutoBugOptions_Priority get priority => $_getN(2);
  @$pb.TagNumber(3)
  set priority(AutoBugOptions_Priority v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPriority() => $_has(2);
  @$pb.TagNumber(3)
  void clearPriority() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.List<HotlistIdFromSource> get hotlistIdsFromSource => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get fileIndividual => $_getBF(4);
  @$pb.TagNumber(5)
  set fileIndividual($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFileIndividual() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileIndividual() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get singletonAutobug => $_getBF(5);
  @$pb.TagNumber(6)
  set singletonAutobug($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSingletonAutobug() => $_has(5);
  @$pb.TagNumber(6)
  void clearSingletonAutobug() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxAllowedIndividualBugs => $_getIZ(6);
  @$pb.TagNumber(7)
  set maxAllowedIndividualBugs($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaxAllowedIndividualBugs() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxAllowedIndividualBugs() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get fileOverall => $_getBF(7);
  @$pb.TagNumber(8)
  set fileOverall($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFileOverall() => $_has(7);
  @$pb.TagNumber(8)
  void clearFileOverall() => clearField(8);

  @$pb.TagNumber(9)
  AutoBugOptions_DefaultTestMetadata get defaultTestMetadata => $_getN(8);
  @$pb.TagNumber(9)
  set defaultTestMetadata(AutoBugOptions_DefaultTestMetadata v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasDefaultTestMetadata() => $_has(8);
  @$pb.TagNumber(9)
  void clearDefaultTestMetadata() => clearField(9);
  @$pb.TagNumber(9)
  AutoBugOptions_DefaultTestMetadata ensureDefaultTestMetadata() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get betaAutobugComponent => $_getIZ(9);
  @$pb.TagNumber(10)
  set betaAutobugComponent($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBetaAutobugComponent() => $_has(9);
  @$pb.TagNumber(10)
  void clearBetaAutobugComponent() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get advancedTestMetadata => $_getBF(10);
  @$pb.TagNumber(11)
  set advancedTestMetadata($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAdvancedTestMetadata() => $_has(10);
  @$pb.TagNumber(11)
  void clearAdvancedTestMetadata() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get fileStale => $_getBF(11);
  @$pb.TagNumber(12)
  set fileStale($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFileStale() => $_has(11);
  @$pb.TagNumber(12)
  void clearFileStale() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get ignoreOverall => $_getBF(12);
  @$pb.TagNumber(13)
  set ignoreOverall($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIgnoreOverall() => $_has(12);
  @$pb.TagNumber(13)
  void clearIgnoreOverall() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get note => $_getSZ(13);
  @$pb.TagNumber(14)
  set note($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNote() => $_has(13);
  @$pb.TagNumber(14)
  void clearNote() => clearField(14);
}

enum HotlistIdFromSource_HotlistIdSource {
  value, 
  label, 
  notSet
}

class HotlistIdFromSource extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, HotlistIdFromSource_HotlistIdSource> _HotlistIdFromSource_HotlistIdSourceByTag = {
    1 : HotlistIdFromSource_HotlistIdSource.value,
    2 : HotlistIdFromSource_HotlistIdSource.label,
    0 : HotlistIdFromSource_HotlistIdSource.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HotlistIdFromSource', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..hasRequiredFields = false
  ;

  HotlistIdFromSource._() : super();
  factory HotlistIdFromSource({
    $fixnum.Int64? value,
    $core.String? label,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (label != null) {
      _result.label = label;
    }
    return _result;
  }
  factory HotlistIdFromSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HotlistIdFromSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HotlistIdFromSource clone() => HotlistIdFromSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HotlistIdFromSource copyWith(void Function(HotlistIdFromSource) updates) => super.copyWith((message) => updates(message as HotlistIdFromSource)) as HotlistIdFromSource; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HotlistIdFromSource create() => HotlistIdFromSource._();
  HotlistIdFromSource createEmptyInstance() => create();
  static $pb.PbList<HotlistIdFromSource> createRepeated() => $pb.PbList<HotlistIdFromSource>();
  @$core.pragma('dart2js:noInline')
  static HotlistIdFromSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotlistIdFromSource>(create);
  static HotlistIdFromSource? _defaultInstance;

  HotlistIdFromSource_HotlistIdSource whichHotlistIdSource() => _HotlistIdFromSource_HotlistIdSourceByTag[$_whichOneof(0)]!;
  void clearHotlistIdSource() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);
}

class Dashboard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Dashboard', createEmptyInstance: create)
    ..pc<DashboardTab>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardTab', $pb.PbFieldType.PM, subBuilder: DashboardTab.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<Notification>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifications', $pb.PbFieldType.PM, subBuilder: Notification.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultTab')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highlightFailingTabs')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highlightToday')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downplayFailingTabs')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  Dashboard._() : super();
  factory Dashboard({
    $core.Iterable<DashboardTab>? dashboardTab,
    $core.String? name,
    $core.Iterable<Notification>? notifications,
    $core.String? defaultTab,
  @$core.Deprecated('This field is deprecated.')
    $core.bool? highlightFailingTabs,
    $core.bool? highlightToday,
    $core.bool? downplayFailingTabs,
    $core.String? description,
  }) {
    final _result = create();
    if (dashboardTab != null) {
      _result.dashboardTab.addAll(dashboardTab);
    }
    if (name != null) {
      _result.name = name;
    }
    if (notifications != null) {
      _result.notifications.addAll(notifications);
    }
    if (defaultTab != null) {
      _result.defaultTab = defaultTab;
    }
    if (highlightFailingTabs != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.highlightFailingTabs = highlightFailingTabs;
    }
    if (highlightToday != null) {
      _result.highlightToday = highlightToday;
    }
    if (downplayFailingTabs != null) {
      _result.downplayFailingTabs = downplayFailingTabs;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Dashboard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Dashboard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Dashboard clone() => Dashboard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Dashboard copyWith(void Function(Dashboard) updates) => super.copyWith((message) => updates(message as Dashboard)) as Dashboard; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Dashboard create() => Dashboard._();
  Dashboard createEmptyInstance() => create();
  static $pb.PbList<Dashboard> createRepeated() => $pb.PbList<Dashboard>();
  @$core.pragma('dart2js:noInline')
  static Dashboard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Dashboard>(create);
  static Dashboard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DashboardTab> get dashboardTab => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Notification> get notifications => $_getList(2);

  @$pb.TagNumber(5)
  $core.String get defaultTab => $_getSZ(3);
  @$pb.TagNumber(5)
  set defaultTab($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasDefaultTab() => $_has(3);
  @$pb.TagNumber(5)
  void clearDefaultTab() => clearField(5);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool get highlightFailingTabs => $_getBF(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set highlightFailingTabs($core.bool v) { $_setBool(4, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasHighlightFailingTabs() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearHighlightFailingTabs() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get highlightToday => $_getBF(5);
  @$pb.TagNumber(7)
  set highlightToday($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasHighlightToday() => $_has(5);
  @$pb.TagNumber(7)
  void clearHighlightToday() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get downplayFailingTabs => $_getBF(6);
  @$pb.TagNumber(8)
  set downplayFailingTabs($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasDownplayFailingTabs() => $_has(6);
  @$pb.TagNumber(8)
  void clearDownplayFailingTabs() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get description => $_getSZ(7);
  @$pb.TagNumber(9)
  set description($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasDescription() => $_has(7);
  @$pb.TagNumber(9)
  void clearDescription() => clearField(9);
}

class LinkTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LinkTemplate', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..pc<LinkOptionsTemplate>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', $pb.PbFieldType.PM, subBuilder: LinkOptionsTemplate.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  LinkTemplate._() : super();
  factory LinkTemplate({
    $core.String? url,
    $core.Iterable<LinkOptionsTemplate>? options,
    $core.String? name,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (options != null) {
      _result.options.addAll(options);
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory LinkTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkTemplate clone() => LinkTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkTemplate copyWith(void Function(LinkTemplate) updates) => super.copyWith((message) => updates(message as LinkTemplate)) as LinkTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LinkTemplate create() => LinkTemplate._();
  LinkTemplate createEmptyInstance() => create();
  static $pb.PbList<LinkTemplate> createRepeated() => $pb.PbList<LinkTemplate>();
  @$core.pragma('dart2js:noInline')
  static LinkTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkTemplate>(create);
  static LinkTemplate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<LinkOptionsTemplate> get options => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class LinkOptionsTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LinkOptionsTemplate', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  LinkOptionsTemplate._() : super();
  factory LinkOptionsTemplate({
    $core.String? key,
    $core.String? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory LinkOptionsTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkOptionsTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkOptionsTemplate clone() => LinkOptionsTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkOptionsTemplate copyWith(void Function(LinkOptionsTemplate) updates) => super.copyWith((message) => updates(message as LinkOptionsTemplate)) as LinkOptionsTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LinkOptionsTemplate create() => LinkOptionsTemplate._();
  LinkOptionsTemplate createEmptyInstance() => create();
  static $pb.PbList<LinkOptionsTemplate> createRepeated() => $pb.PbList<LinkOptionsTemplate>();
  @$core.pragma('dart2js:noInline')
  static LinkOptionsTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkOptionsTemplate>(create);
  static LinkOptionsTemplate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class DashboardTab extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DashboardTab', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testGroupName')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bugComponent', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeSearchPath')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numColumnsRecent', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseOptions')
    ..aOM<LinkTemplate>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openTestTemplate', subBuilder: LinkTemplate.create)
    ..aOM<LinkTemplate>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileBugTemplate', subBuilder: LinkTemplate.create)
    ..aOM<LinkTemplate>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachBugTemplate', subBuilder: LinkTemplate.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultsText')
    ..aOM<LinkTemplate>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultsUrlTemplate', subBuilder: LinkTemplate.create)
    ..aOM<LinkTemplate>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeSearchUrlTemplate', subBuilder: LinkTemplate.create)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tabularNamesRegex')
    ..aOM<DashboardTabAlertOptions>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertOptions', subBuilder: DashboardTabAlertOptions.create)
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aboutDashboardUrl')
    ..aOM<LinkTemplate>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openBugTemplate', subBuilder: LinkTemplate.create)
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autoFileBugs')
    ..aOB(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayLocalTime')
    ..aOM<LinkTemplate>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contextMenuTemplate', subBuilder: LinkTemplate.create)
    ..a<$core.double>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brokenColumnThreshold', $pb.PbFieldType.OF)
    ..aOM<AutoBugOptions>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'betaAutobugOptions', subBuilder: AutoBugOptions.create)
    ..aOM<HealthAnalysisOptions>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthAnalysisOptions', subBuilder: HealthAnalysisOptions.create)
    ..aOM<DashboardTabFlakinessAlertOptions>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flakinessAlertOptions', subBuilder: DashboardTabFlakinessAlertOptions.create)
    ..pc<LinkTemplate>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'columnDiffLinkTemplates', $pb.PbFieldType.PM, subBuilder: LinkTemplate.create)
    ..hasRequiredFields = false
  ;

  DashboardTab._() : super();
  factory DashboardTab({
    $core.String? name,
    $core.String? testGroupName,
    $core.int? bugComponent,
    $core.String? codeSearchPath,
    $core.int? numColumnsRecent,
    $core.String? baseOptions,
    LinkTemplate? openTestTemplate,
    LinkTemplate? fileBugTemplate,
    LinkTemplate? attachBugTemplate,
    $core.String? resultsText,
    LinkTemplate? resultsUrlTemplate,
    LinkTemplate? codeSearchUrlTemplate,
    $core.String? description,
    $core.String? tabularNamesRegex,
    DashboardTabAlertOptions? alertOptions,
    $core.String? aboutDashboardUrl,
    LinkTemplate? openBugTemplate,
    $core.bool? autoFileBugs,
    $core.bool? displayLocalTime,
    LinkTemplate? contextMenuTemplate,
    $core.double? brokenColumnThreshold,
    AutoBugOptions? betaAutobugOptions,
    HealthAnalysisOptions? healthAnalysisOptions,
    DashboardTabFlakinessAlertOptions? flakinessAlertOptions,
    $core.Iterable<LinkTemplate>? columnDiffLinkTemplates,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (testGroupName != null) {
      _result.testGroupName = testGroupName;
    }
    if (bugComponent != null) {
      _result.bugComponent = bugComponent;
    }
    if (codeSearchPath != null) {
      _result.codeSearchPath = codeSearchPath;
    }
    if (numColumnsRecent != null) {
      _result.numColumnsRecent = numColumnsRecent;
    }
    if (baseOptions != null) {
      _result.baseOptions = baseOptions;
    }
    if (openTestTemplate != null) {
      _result.openTestTemplate = openTestTemplate;
    }
    if (fileBugTemplate != null) {
      _result.fileBugTemplate = fileBugTemplate;
    }
    if (attachBugTemplate != null) {
      _result.attachBugTemplate = attachBugTemplate;
    }
    if (resultsText != null) {
      _result.resultsText = resultsText;
    }
    if (resultsUrlTemplate != null) {
      _result.resultsUrlTemplate = resultsUrlTemplate;
    }
    if (codeSearchUrlTemplate != null) {
      _result.codeSearchUrlTemplate = codeSearchUrlTemplate;
    }
    if (description != null) {
      _result.description = description;
    }
    if (tabularNamesRegex != null) {
      _result.tabularNamesRegex = tabularNamesRegex;
    }
    if (alertOptions != null) {
      _result.alertOptions = alertOptions;
    }
    if (aboutDashboardUrl != null) {
      _result.aboutDashboardUrl = aboutDashboardUrl;
    }
    if (openBugTemplate != null) {
      _result.openBugTemplate = openBugTemplate;
    }
    if (autoFileBugs != null) {
      _result.autoFileBugs = autoFileBugs;
    }
    if (displayLocalTime != null) {
      _result.displayLocalTime = displayLocalTime;
    }
    if (contextMenuTemplate != null) {
      _result.contextMenuTemplate = contextMenuTemplate;
    }
    if (brokenColumnThreshold != null) {
      _result.brokenColumnThreshold = brokenColumnThreshold;
    }
    if (betaAutobugOptions != null) {
      _result.betaAutobugOptions = betaAutobugOptions;
    }
    if (healthAnalysisOptions != null) {
      _result.healthAnalysisOptions = healthAnalysisOptions;
    }
    if (flakinessAlertOptions != null) {
      _result.flakinessAlertOptions = flakinessAlertOptions;
    }
    if (columnDiffLinkTemplates != null) {
      _result.columnDiffLinkTemplates.addAll(columnDiffLinkTemplates);
    }
    return _result;
  }
  factory DashboardTab.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardTab.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardTab clone() => DashboardTab()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardTab copyWith(void Function(DashboardTab) updates) => super.copyWith((message) => updates(message as DashboardTab)) as DashboardTab; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DashboardTab create() => DashboardTab._();
  DashboardTab createEmptyInstance() => create();
  static $pb.PbList<DashboardTab> createRepeated() => $pb.PbList<DashboardTab>();
  @$core.pragma('dart2js:noInline')
  static DashboardTab getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardTab>(create);
  static DashboardTab? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get testGroupName => $_getSZ(1);
  @$pb.TagNumber(2)
  set testGroupName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTestGroupName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTestGroupName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get bugComponent => $_getIZ(2);
  @$pb.TagNumber(3)
  set bugComponent($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBugComponent() => $_has(2);
  @$pb.TagNumber(3)
  void clearBugComponent() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get codeSearchPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set codeSearchPath($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCodeSearchPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearCodeSearchPath() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get numColumnsRecent => $_getIZ(4);
  @$pb.TagNumber(5)
  set numColumnsRecent($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumColumnsRecent() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumColumnsRecent() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get baseOptions => $_getSZ(5);
  @$pb.TagNumber(6)
  set baseOptions($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBaseOptions() => $_has(5);
  @$pb.TagNumber(6)
  void clearBaseOptions() => clearField(6);

  @$pb.TagNumber(7)
  LinkTemplate get openTestTemplate => $_getN(6);
  @$pb.TagNumber(7)
  set openTestTemplate(LinkTemplate v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOpenTestTemplate() => $_has(6);
  @$pb.TagNumber(7)
  void clearOpenTestTemplate() => clearField(7);
  @$pb.TagNumber(7)
  LinkTemplate ensureOpenTestTemplate() => $_ensure(6);

  @$pb.TagNumber(8)
  LinkTemplate get fileBugTemplate => $_getN(7);
  @$pb.TagNumber(8)
  set fileBugTemplate(LinkTemplate v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFileBugTemplate() => $_has(7);
  @$pb.TagNumber(8)
  void clearFileBugTemplate() => clearField(8);
  @$pb.TagNumber(8)
  LinkTemplate ensureFileBugTemplate() => $_ensure(7);

  @$pb.TagNumber(9)
  LinkTemplate get attachBugTemplate => $_getN(8);
  @$pb.TagNumber(9)
  set attachBugTemplate(LinkTemplate v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAttachBugTemplate() => $_has(8);
  @$pb.TagNumber(9)
  void clearAttachBugTemplate() => clearField(9);
  @$pb.TagNumber(9)
  LinkTemplate ensureAttachBugTemplate() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get resultsText => $_getSZ(9);
  @$pb.TagNumber(10)
  set resultsText($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasResultsText() => $_has(9);
  @$pb.TagNumber(10)
  void clearResultsText() => clearField(10);

  @$pb.TagNumber(11)
  LinkTemplate get resultsUrlTemplate => $_getN(10);
  @$pb.TagNumber(11)
  set resultsUrlTemplate(LinkTemplate v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasResultsUrlTemplate() => $_has(10);
  @$pb.TagNumber(11)
  void clearResultsUrlTemplate() => clearField(11);
  @$pb.TagNumber(11)
  LinkTemplate ensureResultsUrlTemplate() => $_ensure(10);

  @$pb.TagNumber(12)
  LinkTemplate get codeSearchUrlTemplate => $_getN(11);
  @$pb.TagNumber(12)
  set codeSearchUrlTemplate(LinkTemplate v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCodeSearchUrlTemplate() => $_has(11);
  @$pb.TagNumber(12)
  void clearCodeSearchUrlTemplate() => clearField(12);
  @$pb.TagNumber(12)
  LinkTemplate ensureCodeSearchUrlTemplate() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get description => $_getSZ(12);
  @$pb.TagNumber(13)
  set description($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearDescription() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get tabularNamesRegex => $_getSZ(13);
  @$pb.TagNumber(14)
  set tabularNamesRegex($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTabularNamesRegex() => $_has(13);
  @$pb.TagNumber(14)
  void clearTabularNamesRegex() => clearField(14);

  @$pb.TagNumber(15)
  DashboardTabAlertOptions get alertOptions => $_getN(14);
  @$pb.TagNumber(15)
  set alertOptions(DashboardTabAlertOptions v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasAlertOptions() => $_has(14);
  @$pb.TagNumber(15)
  void clearAlertOptions() => clearField(15);
  @$pb.TagNumber(15)
  DashboardTabAlertOptions ensureAlertOptions() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get aboutDashboardUrl => $_getSZ(15);
  @$pb.TagNumber(16)
  set aboutDashboardUrl($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAboutDashboardUrl() => $_has(15);
  @$pb.TagNumber(16)
  void clearAboutDashboardUrl() => clearField(16);

  @$pb.TagNumber(17)
  LinkTemplate get openBugTemplate => $_getN(16);
  @$pb.TagNumber(17)
  set openBugTemplate(LinkTemplate v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasOpenBugTemplate() => $_has(16);
  @$pb.TagNumber(17)
  void clearOpenBugTemplate() => clearField(17);
  @$pb.TagNumber(17)
  LinkTemplate ensureOpenBugTemplate() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.bool get autoFileBugs => $_getBF(17);
  @$pb.TagNumber(18)
  set autoFileBugs($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasAutoFileBugs() => $_has(17);
  @$pb.TagNumber(18)
  void clearAutoFileBugs() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get displayLocalTime => $_getBF(18);
  @$pb.TagNumber(19)
  set displayLocalTime($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasDisplayLocalTime() => $_has(18);
  @$pb.TagNumber(19)
  void clearDisplayLocalTime() => clearField(19);

  @$pb.TagNumber(20)
  LinkTemplate get contextMenuTemplate => $_getN(19);
  @$pb.TagNumber(20)
  set contextMenuTemplate(LinkTemplate v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasContextMenuTemplate() => $_has(19);
  @$pb.TagNumber(20)
  void clearContextMenuTemplate() => clearField(20);
  @$pb.TagNumber(20)
  LinkTemplate ensureContextMenuTemplate() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.double get brokenColumnThreshold => $_getN(20);
  @$pb.TagNumber(21)
  set brokenColumnThreshold($core.double v) { $_setFloat(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasBrokenColumnThreshold() => $_has(20);
  @$pb.TagNumber(21)
  void clearBrokenColumnThreshold() => clearField(21);

  @$pb.TagNumber(22)
  AutoBugOptions get betaAutobugOptions => $_getN(21);
  @$pb.TagNumber(22)
  set betaAutobugOptions(AutoBugOptions v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasBetaAutobugOptions() => $_has(21);
  @$pb.TagNumber(22)
  void clearBetaAutobugOptions() => clearField(22);
  @$pb.TagNumber(22)
  AutoBugOptions ensureBetaAutobugOptions() => $_ensure(21);

  @$pb.TagNumber(23)
  HealthAnalysisOptions get healthAnalysisOptions => $_getN(22);
  @$pb.TagNumber(23)
  set healthAnalysisOptions(HealthAnalysisOptions v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasHealthAnalysisOptions() => $_has(22);
  @$pb.TagNumber(23)
  void clearHealthAnalysisOptions() => clearField(23);
  @$pb.TagNumber(23)
  HealthAnalysisOptions ensureHealthAnalysisOptions() => $_ensure(22);

  @$pb.TagNumber(24)
  DashboardTabFlakinessAlertOptions get flakinessAlertOptions => $_getN(23);
  @$pb.TagNumber(24)
  set flakinessAlertOptions(DashboardTabFlakinessAlertOptions v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasFlakinessAlertOptions() => $_has(23);
  @$pb.TagNumber(24)
  void clearFlakinessAlertOptions() => clearField(24);
  @$pb.TagNumber(24)
  DashboardTabFlakinessAlertOptions ensureFlakinessAlertOptions() => $_ensure(23);

  @$pb.TagNumber(25)
  $core.List<LinkTemplate> get columnDiffLinkTemplates => $_getList(24);
}

class DashboardTabAlertOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DashboardTabAlertOptions', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertStaleResultsHours', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numFailuresToAlert', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailToAddresses')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numPassesToDisableAlert', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subject')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'debugUrl')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'debugMessage')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waitMinutesBetweenEmails', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailFailureMessage')
    ..hasRequiredFields = false
  ;

  DashboardTabAlertOptions._() : super();
  factory DashboardTabAlertOptions({
    $core.int? alertStaleResultsHours,
    $core.int? numFailuresToAlert,
    $core.String? alertMailToAddresses,
    $core.int? numPassesToDisableAlert,
    $core.String? subject,
    $core.String? debugUrl,
    $core.String? debugMessage,
    $core.int? waitMinutesBetweenEmails,
    $core.String? alertMailFailureMessage,
  }) {
    final _result = create();
    if (alertStaleResultsHours != null) {
      _result.alertStaleResultsHours = alertStaleResultsHours;
    }
    if (numFailuresToAlert != null) {
      _result.numFailuresToAlert = numFailuresToAlert;
    }
    if (alertMailToAddresses != null) {
      _result.alertMailToAddresses = alertMailToAddresses;
    }
    if (numPassesToDisableAlert != null) {
      _result.numPassesToDisableAlert = numPassesToDisableAlert;
    }
    if (subject != null) {
      _result.subject = subject;
    }
    if (debugUrl != null) {
      _result.debugUrl = debugUrl;
    }
    if (debugMessage != null) {
      _result.debugMessage = debugMessage;
    }
    if (waitMinutesBetweenEmails != null) {
      _result.waitMinutesBetweenEmails = waitMinutesBetweenEmails;
    }
    if (alertMailFailureMessage != null) {
      _result.alertMailFailureMessage = alertMailFailureMessage;
    }
    return _result;
  }
  factory DashboardTabAlertOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardTabAlertOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardTabAlertOptions clone() => DashboardTabAlertOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardTabAlertOptions copyWith(void Function(DashboardTabAlertOptions) updates) => super.copyWith((message) => updates(message as DashboardTabAlertOptions)) as DashboardTabAlertOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DashboardTabAlertOptions create() => DashboardTabAlertOptions._();
  DashboardTabAlertOptions createEmptyInstance() => create();
  static $pb.PbList<DashboardTabAlertOptions> createRepeated() => $pb.PbList<DashboardTabAlertOptions>();
  @$core.pragma('dart2js:noInline')
  static DashboardTabAlertOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardTabAlertOptions>(create);
  static DashboardTabAlertOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get alertStaleResultsHours => $_getIZ(0);
  @$pb.TagNumber(1)
  set alertStaleResultsHours($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlertStaleResultsHours() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlertStaleResultsHours() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numFailuresToAlert => $_getIZ(1);
  @$pb.TagNumber(2)
  set numFailuresToAlert($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumFailuresToAlert() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumFailuresToAlert() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get alertMailToAddresses => $_getSZ(2);
  @$pb.TagNumber(3)
  set alertMailToAddresses($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlertMailToAddresses() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlertMailToAddresses() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numPassesToDisableAlert => $_getIZ(3);
  @$pb.TagNumber(4)
  set numPassesToDisableAlert($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumPassesToDisableAlert() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumPassesToDisableAlert() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get subject => $_getSZ(4);
  @$pb.TagNumber(5)
  set subject($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubject() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubject() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get debugUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set debugUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDebugUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearDebugUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get debugMessage => $_getSZ(6);
  @$pb.TagNumber(7)
  set debugMessage($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDebugMessage() => $_has(6);
  @$pb.TagNumber(7)
  void clearDebugMessage() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get waitMinutesBetweenEmails => $_getIZ(7);
  @$pb.TagNumber(8)
  set waitMinutesBetweenEmails($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWaitMinutesBetweenEmails() => $_has(7);
  @$pb.TagNumber(8)
  void clearWaitMinutesBetweenEmails() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get alertMailFailureMessage => $_getSZ(8);
  @$pb.TagNumber(9)
  set alertMailFailureMessage($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAlertMailFailureMessage() => $_has(8);
  @$pb.TagNumber(9)
  void clearAlertMailFailureMessage() => clearField(9);
}

class DashboardTabFlakinessAlertOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DashboardTabFlakinessAlertOptions', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minimumFlakinessToAlert', $pb.PbFieldType.OF)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailToAddresses')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subject')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waitMinutesBetweenEmails', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alertMailFailureMessage')
    ..hasRequiredFields = false
  ;

  DashboardTabFlakinessAlertOptions._() : super();
  factory DashboardTabFlakinessAlertOptions({
    $core.double? minimumFlakinessToAlert,
    $core.String? alertMailToAddresses,
    $core.String? subject,
    $core.int? waitMinutesBetweenEmails,
    $core.String? alertMailFailureMessage,
  }) {
    final _result = create();
    if (minimumFlakinessToAlert != null) {
      _result.minimumFlakinessToAlert = minimumFlakinessToAlert;
    }
    if (alertMailToAddresses != null) {
      _result.alertMailToAddresses = alertMailToAddresses;
    }
    if (subject != null) {
      _result.subject = subject;
    }
    if (waitMinutesBetweenEmails != null) {
      _result.waitMinutesBetweenEmails = waitMinutesBetweenEmails;
    }
    if (alertMailFailureMessage != null) {
      _result.alertMailFailureMessage = alertMailFailureMessage;
    }
    return _result;
  }
  factory DashboardTabFlakinessAlertOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardTabFlakinessAlertOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardTabFlakinessAlertOptions clone() => DashboardTabFlakinessAlertOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardTabFlakinessAlertOptions copyWith(void Function(DashboardTabFlakinessAlertOptions) updates) => super.copyWith((message) => updates(message as DashboardTabFlakinessAlertOptions)) as DashboardTabFlakinessAlertOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DashboardTabFlakinessAlertOptions create() => DashboardTabFlakinessAlertOptions._();
  DashboardTabFlakinessAlertOptions createEmptyInstance() => create();
  static $pb.PbList<DashboardTabFlakinessAlertOptions> createRepeated() => $pb.PbList<DashboardTabFlakinessAlertOptions>();
  @$core.pragma('dart2js:noInline')
  static DashboardTabFlakinessAlertOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardTabFlakinessAlertOptions>(create);
  static DashboardTabFlakinessAlertOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get minimumFlakinessToAlert => $_getN(0);
  @$pb.TagNumber(1)
  set minimumFlakinessToAlert($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinimumFlakinessToAlert() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinimumFlakinessToAlert() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get alertMailToAddresses => $_getSZ(1);
  @$pb.TagNumber(2)
  set alertMailToAddresses($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlertMailToAddresses() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlertMailToAddresses() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get subject => $_getSZ(2);
  @$pb.TagNumber(3)
  set subject($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubject() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubject() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get waitMinutesBetweenEmails => $_getIZ(3);
  @$pb.TagNumber(4)
  set waitMinutesBetweenEmails($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWaitMinutesBetweenEmails() => $_has(3);
  @$pb.TagNumber(4)
  void clearWaitMinutesBetweenEmails() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get alertMailFailureMessage => $_getSZ(4);
  @$pb.TagNumber(5)
  set alertMailFailureMessage($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAlertMailFailureMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlertMailFailureMessage() => clearField(5);
}

class DashboardGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DashboardGroup', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardNames')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  DashboardGroup._() : super();
  factory DashboardGroup({
    $core.String? name,
    $core.Iterable<$core.String>? dashboardNames,
    $core.String? description,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (dashboardNames != null) {
      _result.dashboardNames.addAll(dashboardNames);
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory DashboardGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardGroup clone() => DashboardGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardGroup copyWith(void Function(DashboardGroup) updates) => super.copyWith((message) => updates(message as DashboardGroup)) as DashboardGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DashboardGroup create() => DashboardGroup._();
  DashboardGroup createEmptyInstance() => create();
  static $pb.PbList<DashboardGroup> createRepeated() => $pb.PbList<DashboardGroup>();
  @$core.pragma('dart2js:noInline')
  static DashboardGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardGroup>(create);
  static DashboardGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get dashboardNames => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class Configuration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Configuration', createEmptyInstance: create)
    ..pc<TestGroup>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testGroups', $pb.PbFieldType.PM, subBuilder: TestGroup.create)
    ..pc<Dashboard>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboards', $pb.PbFieldType.PM, subBuilder: Dashboard.create)
    ..pc<DashboardGroup>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dashboardGroups', $pb.PbFieldType.PM, subBuilder: DashboardGroup.create)
    ..hasRequiredFields = false
  ;

  Configuration._() : super();
  factory Configuration({
    $core.Iterable<TestGroup>? testGroups,
    $core.Iterable<Dashboard>? dashboards,
    $core.Iterable<DashboardGroup>? dashboardGroups,
  }) {
    final _result = create();
    if (testGroups != null) {
      _result.testGroups.addAll(testGroups);
    }
    if (dashboards != null) {
      _result.dashboards.addAll(dashboards);
    }
    if (dashboardGroups != null) {
      _result.dashboardGroups.addAll(dashboardGroups);
    }
    return _result;
  }
  factory Configuration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Configuration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Configuration clone() => Configuration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Configuration copyWith(void Function(Configuration) updates) => super.copyWith((message) => updates(message as Configuration)) as Configuration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Configuration create() => Configuration._();
  Configuration createEmptyInstance() => create();
  static $pb.PbList<Configuration> createRepeated() => $pb.PbList<Configuration>();
  @$core.pragma('dart2js:noInline')
  static Configuration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Configuration>(create);
  static Configuration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TestGroup> get testGroups => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Dashboard> get dashboards => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<DashboardGroup> get dashboardGroups => $_getList(2);
}

class HealthAnalysisOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HealthAnalysisOptions', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enable')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'daysOfAnalysis', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailSchedule')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailRecipients')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupingRegex')
    ..hasRequiredFields = false
  ;

  HealthAnalysisOptions._() : super();
  factory HealthAnalysisOptions({
    $core.bool? enable,
    $core.int? daysOfAnalysis,
    $core.String? emailSchedule,
    $core.String? emailRecipients,
    $core.String? groupingRegex,
  }) {
    final _result = create();
    if (enable != null) {
      _result.enable = enable;
    }
    if (daysOfAnalysis != null) {
      _result.daysOfAnalysis = daysOfAnalysis;
    }
    if (emailSchedule != null) {
      _result.emailSchedule = emailSchedule;
    }
    if (emailRecipients != null) {
      _result.emailRecipients = emailRecipients;
    }
    if (groupingRegex != null) {
      _result.groupingRegex = groupingRegex;
    }
    return _result;
  }
  factory HealthAnalysisOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthAnalysisOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthAnalysisOptions clone() => HealthAnalysisOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthAnalysisOptions copyWith(void Function(HealthAnalysisOptions) updates) => super.copyWith((message) => updates(message as HealthAnalysisOptions)) as HealthAnalysisOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HealthAnalysisOptions create() => HealthAnalysisOptions._();
  HealthAnalysisOptions createEmptyInstance() => create();
  static $pb.PbList<HealthAnalysisOptions> createRepeated() => $pb.PbList<HealthAnalysisOptions>();
  @$core.pragma('dart2js:noInline')
  static HealthAnalysisOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthAnalysisOptions>(create);
  static HealthAnalysisOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enable => $_getBF(0);
  @$pb.TagNumber(1)
  set enable($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnable() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get daysOfAnalysis => $_getIZ(1);
  @$pb.TagNumber(2)
  set daysOfAnalysis($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDaysOfAnalysis() => $_has(1);
  @$pb.TagNumber(2)
  void clearDaysOfAnalysis() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get emailSchedule => $_getSZ(2);
  @$pb.TagNumber(3)
  set emailSchedule($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmailSchedule() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmailSchedule() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get emailRecipients => $_getSZ(3);
  @$pb.TagNumber(4)
  set emailRecipients($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmailRecipients() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmailRecipients() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get groupingRegex => $_getSZ(4);
  @$pb.TagNumber(5)
  set groupingRegex($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupingRegex() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupingRegex() => clearField(5);
}

class DefaultConfiguration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DefaultConfiguration', createEmptyInstance: create)
    ..aOM<TestGroup>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultTestGroup', subBuilder: TestGroup.create)
    ..aOM<DashboardTab>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultDashboardTab', subBuilder: DashboardTab.create)
    ..hasRequiredFields = false
  ;

  DefaultConfiguration._() : super();
  factory DefaultConfiguration({
  @$core.Deprecated('This field is deprecated.')
    TestGroup? defaultTestGroup,
  @$core.Deprecated('This field is deprecated.')
    DashboardTab? defaultDashboardTab,
  }) {
    final _result = create();
    if (defaultTestGroup != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.defaultTestGroup = defaultTestGroup;
    }
    if (defaultDashboardTab != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.defaultDashboardTab = defaultDashboardTab;
    }
    return _result;
  }
  factory DefaultConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefaultConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefaultConfiguration clone() => DefaultConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefaultConfiguration copyWith(void Function(DefaultConfiguration) updates) => super.copyWith((message) => updates(message as DefaultConfiguration)) as DefaultConfiguration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DefaultConfiguration create() => DefaultConfiguration._();
  DefaultConfiguration createEmptyInstance() => create();
  static $pb.PbList<DefaultConfiguration> createRepeated() => $pb.PbList<DefaultConfiguration>();
  @$core.pragma('dart2js:noInline')
  static DefaultConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefaultConfiguration>(create);
  static DefaultConfiguration? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  TestGroup get defaultTestGroup => $_getN(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set defaultTestGroup(TestGroup v) { setField(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasDefaultTestGroup() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearDefaultTestGroup() => clearField(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  TestGroup ensureDefaultTestGroup() => $_ensure(0);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  DashboardTab get defaultDashboardTab => $_getN(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set defaultDashboardTab(DashboardTab v) { setField(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasDefaultDashboardTab() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearDefaultDashboardTab() => clearField(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  DashboardTab ensureDefaultDashboardTab() => $_ensure(1);
}

