import 'package:freezed_annotation/freezed_annotation.dart';

part 'raw_material_model.freezed.dart';
part 'raw_material_model.g.dart';

@freezed
abstract class RawMaterialModel with _$RawMaterialModel {
  const factory RawMaterialModel({
    @JsonKey(name: "item_name") @Default('') String itemName,
    @JsonKey(name: "warehouse_name") @Default('') String location,
    @JsonKey(name: "quantity") @Default(0) int quantity,
    @JsonKey(name: "tag") @Default('') String tag,
  }) = _RawMaterialModel;
  factory RawMaterialModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RawMaterialModelFromJson(json);
}
