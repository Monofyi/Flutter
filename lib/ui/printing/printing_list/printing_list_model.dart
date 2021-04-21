import 'package:freezed_annotation/freezed_annotation.dart';

part 'printing_list_model.freezed.dart';
part 'printing_list_model.g.dart';

@freezed
abstract class PrintingModel with _$PrintingModel {
  const factory PrintingModel(
      {@JsonKey(name: "items_qty")
      @Default(0)
          int itemsQty,
      @JsonKey(name: "printing_id")
      @Default(0)
          int printingId,
      @JsonKey(name: "expected_good_output")
      @Default(0)
          int expectedGoodOutput,
      @JsonKey(name: "remaining_goods_qty")
      @Default(0)
          int remainingGoodQty,
      @JsonKey(name: "remaining_items_qty")
      @Default(0)
          int remainingItemsQty,
      @JsonKey(name: "status")
      @Default('')
          String status,
      @JsonKey(name: "finished_goods")
      @Default('')
          String finishedGoods}) = _PrintingModel;
  factory PrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PrintingModelFromJson(json);
}
