import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/raw_material_page/add_raw_material/controller/raw_material_model.dart';

class RawMaterialRepository {
  Future<List<RawMaterialModel>> fetchRawMaterials() async {
    final token = await const AccountRepository().getToken();

    final rawMaterials = await get(
      Uri.parse('http://bitecope.co.in:8000/view_raw_material/'),
      headers: {
        'Authorization': 'Token $token',
      },
    );
    print(rawMaterials.body);
    final rawMaterial = (json.decode(rawMaterials.body) as List)
        .map(
            (dynamic e) => RawMaterialModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return rawMaterial;
  }

  Future<void> addRawMaterial({
    @required String material,
    @required int quanity,
    @required String tag,
    @required String location,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
        Uri.parse('http://bitecope.co.in:8000/add_items/'),
        headers: {
          'Authorization': 'Token $token',
        },
        body: {
          'item_name': material,
          'quantity': quanity.toString(),
          'tag': tag,
          'warehouse_name': location
        });
    print(response.body);
  }
}
