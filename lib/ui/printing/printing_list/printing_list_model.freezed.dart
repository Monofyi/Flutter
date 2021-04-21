// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'printing_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PrintingModel _$PrintingModelFromJson(Map<String, dynamic> json) {
  return _PrintingModel.fromJson(json);
}

/// @nodoc
class _$PrintingModelTearOff {
  const _$PrintingModelTearOff();

// ignore: unused_element
  _PrintingModel call(
      {@JsonKey(name: "items_qty") int itemsQty = 0,
      @JsonKey(name: "printing_id") int printingId = 0,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput = 0,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty = 0,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty = 0,
      @JsonKey(name: "status") String status = '',
      @JsonKey(name: "finished_goods") String finishedGoods = ''}) {
    return _PrintingModel(
      itemsQty: itemsQty,
      printingId: printingId,
      expectedGoodOutput: expectedGoodOutput,
      remainingGoodQty: remainingGoodQty,
      remainingItemsQty: remainingItemsQty,
      status: status,
      finishedGoods: finishedGoods,
    );
  }

// ignore: unused_element
  PrintingModel fromJson(Map<String, Object> json) {
    return PrintingModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PrintingModel = _$PrintingModelTearOff();

/// @nodoc
mixin _$PrintingModel {
  @JsonKey(name: "items_qty")
  int get itemsQty;
  @JsonKey(name: "printing_id")
  int get printingId;
  @JsonKey(name: "expected_good_output")
  int get expectedGoodOutput;
  @JsonKey(name: "remaining_goods_qty")
  int get remainingGoodQty;
  @JsonKey(name: "remaining_items_qty")
  int get remainingItemsQty;
  @JsonKey(name: "status")
  String get status;
  @JsonKey(name: "finished_goods")
  String get finishedGoods;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PrintingModelCopyWith<PrintingModel> get copyWith;
}

/// @nodoc
abstract class $PrintingModelCopyWith<$Res> {
  factory $PrintingModelCopyWith(
          PrintingModel value, $Res Function(PrintingModel) then) =
      _$PrintingModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "printing_id") int printingId,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "finished_goods") String finishedGoods});
}

/// @nodoc
class _$PrintingModelCopyWithImpl<$Res>
    implements $PrintingModelCopyWith<$Res> {
  _$PrintingModelCopyWithImpl(this._value, this._then);

  final PrintingModel _value;
  // ignore: unused_field
  final $Res Function(PrintingModel) _then;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object printingId = freezed,
    Object expectedGoodOutput = freezed,
    Object remainingGoodQty = freezed,
    Object remainingItemsQty = freezed,
    Object status = freezed,
    Object finishedGoods = freezed,
  }) {
    return _then(_value.copyWith(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      printingId: printingId == freezed ? _value.printingId : printingId as int,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      remainingGoodQty: remainingGoodQty == freezed
          ? _value.remainingGoodQty
          : remainingGoodQty as int,
      remainingItemsQty: remainingItemsQty == freezed
          ? _value.remainingItemsQty
          : remainingItemsQty as int,
      status: status == freezed ? _value.status : status as String,
      finishedGoods: finishedGoods == freezed
          ? _value.finishedGoods
          : finishedGoods as String,
    ));
  }
}

/// @nodoc
abstract class _$PrintingModelCopyWith<$Res>
    implements $PrintingModelCopyWith<$Res> {
  factory _$PrintingModelCopyWith(
          _PrintingModel value, $Res Function(_PrintingModel) then) =
      __$PrintingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "items_qty") int itemsQty,
      @JsonKey(name: "printing_id") int printingId,
      @JsonKey(name: "expected_good_output") int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty") int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty") int remainingItemsQty,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "finished_goods") String finishedGoods});
}

/// @nodoc
class __$PrintingModelCopyWithImpl<$Res>
    extends _$PrintingModelCopyWithImpl<$Res>
    implements _$PrintingModelCopyWith<$Res> {
  __$PrintingModelCopyWithImpl(
      _PrintingModel _value, $Res Function(_PrintingModel) _then)
      : super(_value, (v) => _then(v as _PrintingModel));

  @override
  _PrintingModel get _value => super._value as _PrintingModel;

  @override
  $Res call({
    Object itemsQty = freezed,
    Object printingId = freezed,
    Object expectedGoodOutput = freezed,
    Object remainingGoodQty = freezed,
    Object remainingItemsQty = freezed,
    Object status = freezed,
    Object finishedGoods = freezed,
  }) {
    return _then(_PrintingModel(
      itemsQty: itemsQty == freezed ? _value.itemsQty : itemsQty as int,
      printingId: printingId == freezed ? _value.printingId : printingId as int,
      expectedGoodOutput: expectedGoodOutput == freezed
          ? _value.expectedGoodOutput
          : expectedGoodOutput as int,
      remainingGoodQty: remainingGoodQty == freezed
          ? _value.remainingGoodQty
          : remainingGoodQty as int,
      remainingItemsQty: remainingItemsQty == freezed
          ? _value.remainingItemsQty
          : remainingItemsQty as int,
      status: status == freezed ? _value.status : status as String,
      finishedGoods: finishedGoods == freezed
          ? _value.finishedGoods
          : finishedGoods as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PrintingModel implements _PrintingModel {
  const _$_PrintingModel(
      {@JsonKey(name: "items_qty") this.itemsQty = 0,
      @JsonKey(name: "printing_id") this.printingId = 0,
      @JsonKey(name: "expected_good_output") this.expectedGoodOutput = 0,
      @JsonKey(name: "remaining_goods_qty") this.remainingGoodQty = 0,
      @JsonKey(name: "remaining_items_qty") this.remainingItemsQty = 0,
      @JsonKey(name: "status") this.status = '',
      @JsonKey(name: "finished_goods") this.finishedGoods = ''})
      : assert(itemsQty != null),
        assert(printingId != null),
        assert(expectedGoodOutput != null),
        assert(remainingGoodQty != null),
        assert(remainingItemsQty != null),
        assert(status != null),
        assert(finishedGoods != null);

  factory _$_PrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PrintingModelFromJson(json);

  @override
  @JsonKey(name: "items_qty")
  final int itemsQty;
  @override
  @JsonKey(name: "printing_id")
  final int printingId;
  @override
  @JsonKey(name: "expected_good_output")
  final int expectedGoodOutput;
  @override
  @JsonKey(name: "remaining_goods_qty")
  final int remainingGoodQty;
  @override
  @JsonKey(name: "remaining_items_qty")
  final int remainingItemsQty;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "finished_goods")
  final String finishedGoods;

  @override
  String toString() {
    return 'PrintingModel(itemsQty: $itemsQty, printingId: $printingId, expectedGoodOutput: $expectedGoodOutput, remainingGoodQty: $remainingGoodQty, remainingItemsQty: $remainingItemsQty, status: $status, finishedGoods: $finishedGoods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrintingModel &&
            (identical(other.itemsQty, itemsQty) ||
                const DeepCollectionEquality()
                    .equals(other.itemsQty, itemsQty)) &&
            (identical(other.printingId, printingId) ||
                const DeepCollectionEquality()
                    .equals(other.printingId, printingId)) &&
            (identical(other.expectedGoodOutput, expectedGoodOutput) ||
                const DeepCollectionEquality()
                    .equals(other.expectedGoodOutput, expectedGoodOutput)) &&
            (identical(other.remainingGoodQty, remainingGoodQty) ||
                const DeepCollectionEquality()
                    .equals(other.remainingGoodQty, remainingGoodQty)) &&
            (identical(other.remainingItemsQty, remainingItemsQty) ||
                const DeepCollectionEquality()
                    .equals(other.remainingItemsQty, remainingItemsQty)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.finishedGoods, finishedGoods) ||
                const DeepCollectionEquality()
                    .equals(other.finishedGoods, finishedGoods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemsQty) ^
      const DeepCollectionEquality().hash(printingId) ^
      const DeepCollectionEquality().hash(expectedGoodOutput) ^
      const DeepCollectionEquality().hash(remainingGoodQty) ^
      const DeepCollectionEquality().hash(remainingItemsQty) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(finishedGoods);

  @JsonKey(ignore: true)
  @override
  _$PrintingModelCopyWith<_PrintingModel> get copyWith =>
      __$PrintingModelCopyWithImpl<_PrintingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrintingModelToJson(this);
  }
}

abstract class _PrintingModel implements PrintingModel {
  const factory _PrintingModel(
          {@JsonKey(name: "items_qty") int itemsQty,
          @JsonKey(name: "printing_id") int printingId,
          @JsonKey(name: "expected_good_output") int expectedGoodOutput,
          @JsonKey(name: "remaining_goods_qty") int remainingGoodQty,
          @JsonKey(name: "remaining_items_qty") int remainingItemsQty,
          @JsonKey(name: "status") String status,
          @JsonKey(name: "finished_goods") String finishedGoods}) =
      _$_PrintingModel;

  factory _PrintingModel.fromJson(Map<String, dynamic> json) =
      _$_PrintingModel.fromJson;

  @override
  @JsonKey(name: "items_qty")
  int get itemsQty;
  @override
  @JsonKey(name: "printing_id")
  int get printingId;
  @override
  @JsonKey(name: "expected_good_output")
  int get expectedGoodOutput;
  @override
  @JsonKey(name: "remaining_goods_qty")
  int get remainingGoodQty;
  @override
  @JsonKey(name: "remaining_items_qty")
  int get remainingItemsQty;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "finished_goods")
  String get finishedGoods;
  @override
  @JsonKey(ignore: true)
  _$PrintingModelCopyWith<_PrintingModel> get copyWith;
}
