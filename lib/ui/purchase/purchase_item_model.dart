import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchase_item_model.g.dart';
part 'purchase_item_model.freezed.dart';
@freezed
abstract class PurchaseItemModel with _$PurchaseItemModel {
  const factory PurchaseItemModel({
    @JsonKey(name: "item_name") @Default('') String buyerName,
    @JsonKey(name: "quantity") @Default(0) int buyerId,
    @JsonKey(name: "date_time") @Default('') String address,
    @JsonKey(name: "description") @Default('') DateTime description,
  }) = _PurchaseItemModel;
  factory PurchaseItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseItemModelFromJson(json);
}
