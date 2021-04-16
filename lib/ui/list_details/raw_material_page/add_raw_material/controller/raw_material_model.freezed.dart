// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raw_material_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RawMaterialModel _$RawMaterialModelFromJson(Map<String, dynamic> json) {
  return _RawMaterialModel.fromJson(json);
}

/// @nodoc
class _$RawMaterialModelTearOff {
  const _$RawMaterialModelTearOff();

// ignore: unused_element
  _RawMaterialModel call(
      {@JsonKey(name: 'item_name') String itemName = '',
      @JsonKey(name: 'warehouse_name') String location = '',
      @JsonKey(name: 'quantity') int quantity = 0,
      @JsonKey(name: 'tag') String tag = ''}) {
    return _RawMaterialModel(
      itemName: itemName,
      location: location,
      quantity: quantity,
      tag: tag,
    );
  }

// ignore: unused_element
  RawMaterialModel fromJson(Map<String, Object> json) {
    return RawMaterialModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RawMaterialModel = _$RawMaterialModelTearOff();

/// @nodoc
mixin _$RawMaterialModel {
  @JsonKey(name: 'item_name')
  String get itemName;
  @JsonKey(name: 'warehouse_name')
  String get location;
  @JsonKey(name: 'quantity')
  int get quantity;
  @JsonKey(name: 'tag')
  String get tag;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RawMaterialModelCopyWith<RawMaterialModel> get copyWith;
}

/// @nodoc
abstract class $RawMaterialModelCopyWith<$Res> {
  factory $RawMaterialModelCopyWith(
          RawMaterialModel value, $Res Function(RawMaterialModel) then) =
      _$RawMaterialModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'warehouse_name') String location,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'tag') String tag});
}

/// @nodoc
class _$RawMaterialModelCopyWithImpl<$Res>
    implements $RawMaterialModelCopyWith<$Res> {
  _$RawMaterialModelCopyWithImpl(this._value, this._then);

  final RawMaterialModel _value;
  // ignore: unused_field
  final $Res Function(RawMaterialModel) _then;

  @override
  $Res call({
    Object itemName = freezed,
    Object location = freezed,
    Object quantity = freezed,
    Object tag = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      location: location == freezed ? _value.location : location as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

/// @nodoc
abstract class _$RawMaterialModelCopyWith<$Res>
    implements $RawMaterialModelCopyWith<$Res> {
  factory _$RawMaterialModelCopyWith(
          _RawMaterialModel value, $Res Function(_RawMaterialModel) then) =
      __$RawMaterialModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'warehouse_name') String location,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'tag') String tag});
}

/// @nodoc
class __$RawMaterialModelCopyWithImpl<$Res>
    extends _$RawMaterialModelCopyWithImpl<$Res>
    implements _$RawMaterialModelCopyWith<$Res> {
  __$RawMaterialModelCopyWithImpl(
      _RawMaterialModel _value, $Res Function(_RawMaterialModel) _then)
      : super(_value, (v) => _then(v as _RawMaterialModel));

  @override
  _RawMaterialModel get _value => super._value as _RawMaterialModel;

  @override
  $Res call({
    Object itemName = freezed,
    Object location = freezed,
    Object quantity = freezed,
    Object tag = freezed,
  }) {
    return _then(_RawMaterialModel(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      location: location == freezed ? _value.location : location as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      tag: tag == freezed ? _value.tag : tag as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RawMaterialModel implements _RawMaterialModel {
  const _$_RawMaterialModel(
      {@JsonKey(name: 'item_name') this.itemName = '',
      @JsonKey(name: 'warehouse_name') this.location = '',
      @JsonKey(name: 'quantity') this.quantity = 0,
      @JsonKey(name: 'tag') this.tag = ''})
      : assert(itemName != null),
        assert(location != null),
        assert(quantity != null),
        assert(tag != null);

  factory _$_RawMaterialModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RawMaterialModelFromJson(json);

  @override
  @JsonKey(name: 'item_name')
  final String itemName;
  @override
  @JsonKey(name: 'warehouse_name')
  final String location;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'tag')
  final String tag;

  @override
  String toString() {
    return 'RawMaterialModel(itemName: $itemName, location: $location, quantity: $quantity, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RawMaterialModel &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$RawMaterialModelCopyWith<_RawMaterialModel> get copyWith =>
      __$RawMaterialModelCopyWithImpl<_RawMaterialModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RawMaterialModelToJson(this);
  }
}

abstract class _RawMaterialModel implements RawMaterialModel {
  const factory _RawMaterialModel(
      {@JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'warehouse_name') String location,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'tag') String tag}) = _$_RawMaterialModel;

  factory _RawMaterialModel.fromJson(Map<String, dynamic> json) =
      _$_RawMaterialModel.fromJson;

  @override
  @JsonKey(name: 'item_name')
  String get itemName;
  @override
  @JsonKey(name: 'warehouse_name')
  String get location;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'tag')
  String get tag;
  @override
  @JsonKey(ignore: true)
  _$RawMaterialModelCopyWith<_RawMaterialModel> get copyWith;
}
