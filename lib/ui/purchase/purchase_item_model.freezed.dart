// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'purchase_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PurchaseItemModel _$PurchaseItemModelFromJson(Map<String, dynamic> json) {
  return _PurchaseItemModel.fromJson(json);
}

/// @nodoc
class _$PurchaseItemModelTearOff {
  const _$PurchaseItemModelTearOff();

// ignore: unused_element
  _PurchaseItemModel call(
      {@JsonKey(name: 'item_name') String buyerName = '',
      @JsonKey(name: 'quantity') int buyerId = 0,
      @JsonKey(name: 'date_time') String address = '',
      @JsonKey(name: 'description') DateTime description = ''}) {
    return _PurchaseItemModel(
      buyerName: buyerName,
      buyerId: buyerId,
      address: address,
      description: description,
    );
  }

// ignore: unused_element
  PurchaseItemModel fromJson(Map<String, Object> json) {
    return PurchaseItemModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PurchaseItemModel = _$PurchaseItemModelTearOff();

/// @nodoc
mixin _$PurchaseItemModel {
  @JsonKey(name: 'item_name')
  String get buyerName;
  @JsonKey(name: 'quantity')
  int get buyerId;
  @JsonKey(name: 'date_time')
  String get address;
  @JsonKey(name: 'description')
  DateTime get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PurchaseItemModelCopyWith<PurchaseItemModel> get copyWith;
}

/// @nodoc
abstract class $PurchaseItemModelCopyWith<$Res> {
  factory $PurchaseItemModelCopyWith(
          PurchaseItemModel value, $Res Function(PurchaseItemModel) then) =
      _$PurchaseItemModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'item_name') String buyerName,
      @JsonKey(name: 'quantity') int buyerId,
      @JsonKey(name: 'date_time') String address,
      @JsonKey(name: 'description') DateTime description});
}

/// @nodoc
class _$PurchaseItemModelCopyWithImpl<$Res>
    implements $PurchaseItemModelCopyWith<$Res> {
  _$PurchaseItemModelCopyWithImpl(this._value, this._then);

  final PurchaseItemModel _value;
  // ignore: unused_field
  final $Res Function(PurchaseItemModel) _then;

  @override
  $Res call({
    Object buyerName = freezed,
    Object buyerId = freezed,
    Object address = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      buyerName: buyerName == freezed ? _value.buyerName : buyerName as String,
      buyerId: buyerId == freezed ? _value.buyerId : buyerId as int,
      address: address == freezed ? _value.address : address as String,
      description:
          description == freezed ? _value.description : description as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseItemModelCopyWith<$Res>
    implements $PurchaseItemModelCopyWith<$Res> {
  factory _$PurchaseItemModelCopyWith(
          _PurchaseItemModel value, $Res Function(_PurchaseItemModel) then) =
      __$PurchaseItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'item_name') String buyerName,
      @JsonKey(name: 'quantity') int buyerId,
      @JsonKey(name: 'date_time') String address,
      @JsonKey(name: 'description') DateTime description});
}

/// @nodoc
class __$PurchaseItemModelCopyWithImpl<$Res>
    extends _$PurchaseItemModelCopyWithImpl<$Res>
    implements _$PurchaseItemModelCopyWith<$Res> {
  __$PurchaseItemModelCopyWithImpl(
      _PurchaseItemModel _value, $Res Function(_PurchaseItemModel) _then)
      : super(_value, (v) => _then(v as _PurchaseItemModel));

  @override
  _PurchaseItemModel get _value => super._value as _PurchaseItemModel;

  @override
  $Res call({
    Object buyerName = freezed,
    Object buyerId = freezed,
    Object address = freezed,
    Object description = freezed,
  }) {
    return _then(_PurchaseItemModel(
      buyerName: buyerName == freezed ? _value.buyerName : buyerName as String,
      buyerId: buyerId == freezed ? _value.buyerId : buyerId as int,
      address: address == freezed ? _value.address : address as String,
      description:
          description == freezed ? _value.description : description as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PurchaseItemModel implements _PurchaseItemModel {
  const _$_PurchaseItemModel(
      {@JsonKey(name: 'item_name') this.buyerName = '',
      @JsonKey(name: 'quantity') this.buyerId = 0,
      @JsonKey(name: 'date_time') this.address = '',
      @JsonKey(name: 'description') this.description = ''})
      : assert(buyerName != null),
        assert(buyerId != null),
        assert(address != null),
        assert(description != null);

  factory _$_PurchaseItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseItemModelFromJson(json);

  @override
  @JsonKey(name: 'item_name')
  final String buyerName;
  @override
  @JsonKey(name: 'quantity')
  final int buyerId;
  @override
  @JsonKey(name: 'date_time')
  final String address;
  @override
  @JsonKey(name: 'description')
  final DateTime description;

  @override
  String toString() {
    return 'PurchaseItemModel(buyerName: $buyerName, buyerId: $buyerId, address: $address, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseItemModel &&
            (identical(other.buyerName, buyerName) ||
                const DeepCollectionEquality()
                    .equals(other.buyerName, buyerName)) &&
            (identical(other.buyerId, buyerId) ||
                const DeepCollectionEquality()
                    .equals(other.buyerId, buyerId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buyerName) ^
      const DeepCollectionEquality().hash(buyerId) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PurchaseItemModelCopyWith<_PurchaseItemModel> get copyWith =>
      __$PurchaseItemModelCopyWithImpl<_PurchaseItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PurchaseItemModelToJson(this);
  }
}

abstract class _PurchaseItemModel implements PurchaseItemModel {
  const factory _PurchaseItemModel(
          {@JsonKey(name: 'item_name') String buyerName,
          @JsonKey(name: 'quantity') int buyerId,
          @JsonKey(name: 'date_time') String address,
          @JsonKey(name: 'description') DateTime description}) =
      _$_PurchaseItemModel;

  factory _PurchaseItemModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseItemModel.fromJson;

  @override
  @JsonKey(name: 'item_name')
  String get buyerName;
  @override
  @JsonKey(name: 'quantity')
  int get buyerId;
  @override
  @JsonKey(name: 'date_time')
  String get address;
  @override
  @JsonKey(name: 'description')
  DateTime get description;
  @override
  @JsonKey(ignore: true)
  _$PurchaseItemModelCopyWith<_PurchaseItemModel> get copyWith;
}
