// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_production_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartProductionModel _$_$_StartProductionModelFromJson(
    Map<String, dynamic> json) {
  return _$_StartProductionModel(
    rawMatInput: json['raw_mat_input'] as int,
    expectedGoodOutput: json['expected_good_output'] as int,
    goodsName: json['goods_name'] as String,
    rawMaterial: json['raw_material'] as String,
    machineName: json['machine_name'] as String,
  );
}

Map<String, dynamic> _$_$_StartProductionModelToJson(
        _$_StartProductionModel instance) =>
    <String, dynamic>{
      'raw_mat_input': instance.rawMatInput,
      'expected_good_output': instance.expectedGoodOutput,
      'goods_name': instance.goodsName,
      'raw_material': instance.rawMaterial,
      'machine_name': instance.machineName,
    };
