import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/buyers_page/add_buyer/controller/buyer_model.dart';

class PrintingRepository {
  Future<List<BuyerModel>> printingHistory() async {
    final token = await const AccountRepository().getToken();

    final suppliers = await get(
      Uri.parse('http://bitecope.co.in:8000/view_printing_history/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );

    final supplierList = (json.decode(suppliers.body) as List)
        .map((dynamic e) => BuyerModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return supplierList;
  }

  Future<void> stopPrinting({
    @required int printingId,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
      Uri.parse('http://bitecope.co.in:8000/stop_printing/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'printing_id': printingId,
      },
    );
    print(response.body);
  }

  Future<bool> onGoingPrinting() async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await get(
      Uri.parse('http://bitecope.co.in:8000/view_ongoing_printing/'),
      headers: {
        'Authorization': 'Token $token',
      },
    );
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  Future<void> startPrinting({
    @required String goodsName,
    @required int expectedGoodOutput,
    @required int rawMatInput,
    @required String rawMaterial,
    @required String machineName,
    @required String description,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await put(
      Uri.parse('http://bitecope.co.in:8000/start_printing/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'goods_name': goodsName,
        'expected_good_output': expectedGoodOutput.toString(),
        'raw_mat_input': rawMatInput.toString(),
        'raw_material': rawMaterial,
        'machine_name': machineName,
        'description': description
      },
    );
    print(response.body);
  }
}
