import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_printing_model.freezed.dart';
part 'start_printing_model.g.dart';

@freezed
abstract class StartPrintingModel with _$StartPrintingModel {
  const factory StartPrintingModel({
    @Default('') String goodsName,
    @Default(0) int expectedGoodOutput,
    @Default(0) int rawMatInput,
    @Default('') String rawMaterial,
    @Default('') String machineName,
    @Default('') String description,
  }) = _StartPrintingModel;
  factory StartPrintingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StartPrintingModelFromJson(json);
}
