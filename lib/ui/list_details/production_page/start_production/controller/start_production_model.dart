import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_production_model.freezed.dart';
part 'start_production_model.g.dart';

@freezed
abstract class StartProductionModel with _$StartProductionModel {
  const factory StartProductionModel(
      {@JsonKey(name: "raw_mat_input")
      @Default('')
          int rawMatInput,
      @JsonKey(name: "expected_good_output")
      @Default('')
          int expectedGoodOutput,
      @JsonKey(name: "goods_name")
      @Default('')
          String goodsName,
      @JsonKey(name: "raw_material")
      @Default('')
          String rawMaterial,
      @JsonKey(name: "machine_name")
      @Default('')
          String machineName}) = _StartProductionModel;
  factory StartProductionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StartProductionModelFromJson(json);
}
