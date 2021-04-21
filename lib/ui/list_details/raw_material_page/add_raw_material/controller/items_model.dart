import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_material_model.freezed.dart';
part 'raw_material_model.g.dart';

@freezed
abstract class ItemsModel with _$ItemsModel {
  const factory ItemsModel({
    @JsonKey(name: "item_name") @Default('') String itemName,
    @JsonKey(name: "warehouse_name") @Default('') String location,
    @JsonKey(name: "quantity") @Default(0) int quantity,
    @JsonKey(name: "tag") @Default('') String tag,
  }) = _RawMaterialModel;
  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemsModelFromJson(json);
}
