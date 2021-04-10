// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'start_printing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StartPrintingModel _$StartPrintingModelFromJson(Map<String, dynamic> json) {
  return _StartPrintingModel.fromJson(json);
}

/// @nodoc
class _$StartPrintingModelTearOff {
  const _$StartPrintingModelTearOff();

// ignore: unused_element
  _StartPrintingModel call(
      {String goodsName = '',
      int expectedGoodOutput = 0,
      int rawMatInput = 0,
      String rawMaterial = '',
      String machineName = '',
      String description = ''}) {
    return _StartPrintingModel(
      goodsName: goodsName,
      expectedGoodOutput: expectedGoodOutput,
      rawMatInput: rawMatInput,
      rawMaterial: rawMaterial,
      machineName: machineName,
      description: description,
    );
  }

// ignore: unused_element
  StartPrintingModel fromJson(Map<String, Object> json) {
    return StartPrintingModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StartPrintingModel = _$StartPrintingModelTearOff();

/// @nodoc
mixin _$StartPrintingModel {
  String get goodsName;
  int get expectedGoodOutput;
  int get rawMatInput;
  String get rawMaterial;
  String get machineName;
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StartPrintingModelCopyWith<StartPrintingModel> get copyWith;
}

/// @nodoc
abstract class $StartPrintingModelCopyWith<$Res> {
  factory $StartPrintingModelCopyWith(
          StartPrintingModel value, $Res Function(StartPrintingModel) then) =
      _$StartPrintingModelCopyWithImpl<$Res>;
  $Res call(
      {String goodsName,
      int expectedGoodOutput,
      int rawMatInput,
      String rawMaterial,
      String machineName,
      String description});
}

/// @nodoc
class _$StartPrintingModelCopyWithImpl<$Res>
    implements $StartPrintingModelCopyWith<$Res> {
  _$StartPrintingModelCopyWithImpl(this._value, this._then);

  final StartPrintingModel _value;
  // ignore: unused_field
  final $Res Function(StartPrintingModel) _then;

  @override
  $Res call({
    Object goodsName = freezed,
    Object expectedGoodOutput = freezed,
    Object rawMatInput = freezed,
    Object rawMaterial = freezed,
    Object machineName = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      goodsName: goodsName == freezed ? _value.goodsName : goodsName as String,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      rawMatInput:
          rawMatInput == freezed ? _value.rawMatInput : rawMatInput as int,
      rawMaterial:
          rawMaterial == freezed ? _value.rawMaterial : rawMaterial as String,
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$StartPrintingModelCopyWith<$Res>
    implements $StartPrintingModelCopyWith<$Res> {
  factory _$StartPrintingModelCopyWith(
          _StartPrintingModel value, $Res Function(_StartPrintingModel) then) =
      __$StartPrintingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String goodsName,
      int expectedGoodOutput,
      int rawMatInput,
      String rawMaterial,
      String machineName,
      String description});
}

/// @nodoc
class __$StartPrintingModelCopyWithImpl<$Res>
    extends _$StartPrintingModelCopyWithImpl<$Res>
    implements _$StartPrintingModelCopyWith<$Res> {
  __$StartPrintingModelCopyWithImpl(
      _StartPrintingModel _value, $Res Function(_StartPrintingModel) _then)
      : super(_value, (v) => _then(v as _StartPrintingModel));

  @override
  _StartPrintingModel get _value => super._value as _StartPrintingModel;

  @override
  $Res call({
    Object goodsName = freezed,
    Object expectedGoodOutput = freezed,
    Object rawMatInput = freezed,
    Object rawMaterial = freezed,
    Object machineName = freezed,
    Object description = freezed,
  }) {
    return _then(_StartPrintingModel(
      goodsName: goodsName == freezed ? _value.goodsName : goodsName as String,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      rawMatInput:
          rawMatInput == freezed ? _value.rawMatInput : rawMatInput as int,
      rawMaterial:
          rawMaterial == freezed ? _value.rawMaterial : rawMaterial as String,
      machineName:
          machineName == freezed ? _value.machineName : machineName as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StartPrintingModel implements _StartPrintingModel {
  const _$_StartPrintingModel(
      {this.goodsName = '',
      this.expectedGoodOutput = 0,
      this.rawMatInput = 0,
      this.rawMaterial = '',
      this.machineName = '',
      this.description = ''})
      : assert(goodsName != null),
        assert(expectedGoodOutput != null),
        assert(rawMatInput != null),
        assert(rawMaterial != null),
        assert(machineName != null),
        assert(description != null);

  factory _$_StartPrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StartPrintingModelFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String goodsName;
  @JsonKey(defaultValue: 0)
  @override
  final int expectedGoodOutput;
  @JsonKey(defaultValue: 0)
  @override
  final int rawMatInput;
  @JsonKey(defaultValue: '')
  @override
  final String rawMaterial;
  @JsonKey(defaultValue: '')
  @override
  final String machineName;
  @JsonKey(defaultValue: '')
  @override
  final String description;

  @override
  String toString() {
    return 'StartPrintingModel(goodsName: $goodsName, expectedGoodOutput: $expectedGoodOutput, rawMatInput: $rawMatInput, rawMaterial: $rawMaterial, machineName: $machineName, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartPrintingModel &&
            (identical(other.goodsName, goodsName) ||
                const DeepCollectionEquality()
                    .equals(other.goodsName, goodsName)) &&
            (identical(other.expectedGoodOutput, expectedGoodOutput) ||
                const DeepCollectionEquality()
                    .equals(other.expectedGoodOutput, expectedGoodOutput)) &&
            (identical(other.rawMatInput, rawMatInput) ||
                const DeepCollectionEquality()
                    .equals(other.rawMatInput, rawMatInput)) &&
            (identical(other.rawMaterial, rawMaterial) ||
                const DeepCollectionEquality()
                    .equals(other.rawMaterial, rawMaterial)) &&
            (identical(other.machineName, machineName) ||
                const DeepCollectionEquality()
                    .equals(other.machineName, machineName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(goodsName) ^
      const DeepCollectionEquality().hash(expectedGoodOutput) ^
      const DeepCollectionEquality().hash(rawMatInput) ^
      const DeepCollectionEquality().hash(rawMaterial) ^
      const DeepCollectionEquality().hash(machineName) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$StartPrintingModelCopyWith<_StartPrintingModel> get copyWith =>
      __$StartPrintingModelCopyWithImpl<_StartPrintingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StartPrintingModelToJson(this);
  }
}

abstract class _StartPrintingModel implements StartPrintingModel {
  const factory _StartPrintingModel(
      {String goodsName,
      int expectedGoodOutput,
      int rawMatInput,
      String rawMaterial,
      String machineName,
      String description}) = _$_StartPrintingModel;

  factory _StartPrintingModel.fromJson(Map<String, dynamic> json) =
      _$_StartPrintingModel.fromJson;

  @override
  String get goodsName;
  @override
  int get expectedGoodOutput;
  @override
  int get rawMatInput;
  @override
  String get rawMaterial;
  @override
  String get machineName;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$StartPrintingModelCopyWith<_StartPrintingModel> get copyWith;
}
