import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods_model.freezed.dart';
part 'goods_model.g.dart';

@freezed
abstract class RawMaterialModel with _$RawMaterialModel {
  const factory RawMaterialModel({
    @JsonKey(name: "goods_name") @Default('') String goodsName,
    @JsonKey(name: "location_name") @Default('') String locationName,
    @JsonKey(name: "quantity") @Default('') String quantity,
  }) = _RawMaterialModel;
  factory RawMaterialModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RawMaterialModelFromJson(json);
}
