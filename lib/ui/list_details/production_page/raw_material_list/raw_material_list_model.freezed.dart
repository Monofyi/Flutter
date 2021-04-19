// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_material_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RawMaterialListTearOff {
  const _$RawMaterialListTearOff();

// ignore: unused_element
  _RawMaterialList call(
      {List<RawMaterialModel> rawMaterials = const <RawMaterialModel>[],
      bool loading = true}) {
    return _RawMaterialList(
      rawMaterials: rawMaterials,
      loading: loading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RawMaterialList = _$RawMaterialListTearOff();

/// @nodoc
mixin _$RawMaterialList {
  List<RawMaterialModel> get rawMaterials;
  bool get loading;

  @JsonKey(ignore: true)
  $RawMaterialListCopyWith<RawMaterialList> get copyWith;
}

/// @nodoc
abstract class $RawMaterialListCopyWith<$Res> {
  factory $RawMaterialListCopyWith(
          RawMaterialList value, $Res Function(RawMaterialList) then) =
      _$RawMaterialListCopyWithImpl<$Res>;
  $Res call({List<RawMaterialModel> rawMaterials, bool loading});
}

/// @nodoc
class _$RawMaterialListCopyWithImpl<$Res>
    implements $RawMaterialListCopyWith<$Res> {
  _$RawMaterialListCopyWithImpl(this._value, this._then);

  final RawMaterialList _value;
  // ignore: unused_field
  final $Res Function(RawMaterialList) _then;

  @override
  $Res call({
    Object rawMaterials = freezed,
    Object loading = freezed,
  }) {
    return _then(_value.copyWith(
      rawMaterials: rawMaterials == freezed
          ? _value.rawMaterials
          : rawMaterials as List<RawMaterialModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
abstract class _$RawMaterialListCopyWith<$Res>
    implements $RawMaterialListCopyWith<$Res> {
  factory _$RawMaterialListCopyWith(
          _RawMaterialList value, $Res Function(_RawMaterialList) then) =
      __$RawMaterialListCopyWithImpl<$Res>;
  @override
  $Res call({List<RawMaterialModel> rawMaterials, bool loading});
}

/// @nodoc
class __$RawMaterialListCopyWithImpl<$Res>
    extends _$RawMaterialListCopyWithImpl<$Res>
    implements _$RawMaterialListCopyWith<$Res> {
  __$RawMaterialListCopyWithImpl(
      _RawMaterialList _value, $Res Function(_RawMaterialList) _then)
      : super(_value, (v) => _then(v as _RawMaterialList));

  @override
  _RawMaterialList get _value => super._value as _RawMaterialList;

  @override
  $Res call({
    Object rawMaterials = freezed,
    Object loading = freezed,
  }) {
    return _then(_RawMaterialList(
      rawMaterials: rawMaterials == freezed
          ? _value.rawMaterials
          : rawMaterials as List<RawMaterialModel>,
      loading: loading == freezed ? _value.loading : loading as bool,
    ));
  }
}

/// @nodoc
class _$_RawMaterialList implements _RawMaterialList {
  const _$_RawMaterialList(
      {this.rawMaterials = const <RawMaterialModel>[], this.loading = true})
      : assert(rawMaterials != null),
        assert(loading != null);

  @JsonKey(defaultValue: const <RawMaterialModel>[])
  @override
  final List<RawMaterialModel> rawMaterials;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;

  @override
  String toString() {
    return 'RawMaterialList(rawMaterials: $rawMaterials, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawMaterialList &&
            (identical(other.rawMaterials, rawMaterials) ||
                const DeepCollectionEquality()
                    .equals(other.rawMaterials, rawMaterials)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawMaterials) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$RawMaterialListCopyWith<_RawMaterialList> get copyWith =>
      __$RawMaterialListCopyWithImpl<_RawMaterialList>(this, _$identity);
}

abstract class _RawMaterialList implements RawMaterialList {
  const factory _RawMaterialList(
      {List<RawMaterialModel> rawMaterials, bool loading}) = _$_RawMaterialList;

  @override
  List<RawMaterialModel> get rawMaterials;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$RawMaterialListCopyWith<_RawMaterialList> get copyWith;
}
