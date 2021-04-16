// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseItemModel _$_$_PurchaseItemModelFromJson(Map<String, dynamic> json) {
  return _$_PurchaseItemModel(
    buyerName: json['item_name'] as String,
    buyerId: json['quantity'] as int,
    address: json['date_time'] as String,
    description: json['description'] == null
        ? null
        : DateTime.parse(json['description'] as String),
  );
}

Map<String, dynamic> _$_$_PurchaseItemModelToJson(
        _$_PurchaseItemModel instance) =>
    <String, dynamic>{
      'item_name': instance.buyerName,
      'quantity': instance.buyerId,
      'date_time': instance.address,
      'description': instance.description?.toIso8601String(),
    };
