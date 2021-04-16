// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_material_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawMaterialModel _$_$_RawMaterialModelFromJson(Map<String, dynamic> json) {
  return _$_RawMaterialModel(
    itemName: json['item_name'] as String,
    location: json['warehouse_name'] as String,
    quantity: json['quantity'] as int,
    tag: json['tag'] as String,
  );
}

Map<String, dynamic> _$_$_RawMaterialModelToJson(
        _$_RawMaterialModel instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'warehouse_name': instance.location,
      'quantity': instance.quantity,
      'tag': instance.tag,
    };
