// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_printing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartPrintingModel _$_$_StartPrintingModelFromJson(
    Map<String, dynamic> json) {
  return _$_StartPrintingModel(
    goodsName: json['goodsName'] as String ?? '',
    expectedGoodOutput: json['expectedGoodOutput'] as int ?? 0,
    rawMatInput: json['rawMatInput'] as int ?? 0,
    rawMaterial: json['rawMaterial'] as String ?? '',
    machineName: json['machineName'] as String ?? '',
    description: json['description'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_StartPrintingModelToJson(
        _$_StartPrintingModel instance) =>
    <String, dynamic>{
      'goodsName': instance.goodsName,
      'expectedGoodOutput': instance.expectedGoodOutput,
      'rawMatInput': instance.rawMatInput,
      'rawMaterial': instance.rawMaterial,
      'machineName': instance.machineName,
      'description': instance.description,
    };
