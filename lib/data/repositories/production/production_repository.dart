import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/buyers_page/add_buyer/controller/buyer_model.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/production_model.dart';

import '../../constants.dart';

class ProductionRepository {
  Future<List<BuyerModel>> newProduction({
    @required int qnty,
    @required int expectedOutput,
    @required String goodsName,
    @required String inputItems,
    @required String machineName,
  }) async {
    final token = await const AccountRepository().getToken();

    final start = await post(Uri.parse('$port/start_production/'), headers: {
      "Content-Type": "application/json",
      'Authorization': 'Token $token',
    }, body: {
      'items_qty': qnty,
      'expected_good_output': expectedOutput,
      "goods_name": goodsName,
      "input_items": inputItems,
      "machine_name": machineName
    });
    print(start.body);
    final supplierList = (json.decode(start.body) as List)
        .map((dynamic e) => BuyerModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return supplierList;
  }

  Future<List<Production>> fetchOnGoingProductions() async {
    final token = await const AccountRepository().getToken();

    final suppliers = await get(
      Uri.parse('$port/view_ongoing_production/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );

    final supplierList = (json.decode(suppliers.body) as List)
        .map((dynamic e) => Production.fromJson(e as Map<String, dynamic>))
        .toList();
    return supplierList;
  }

  Future<void> addBuyers({
    @required String name,
    @required String number,
    @required String address,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
      Uri.parse('$port/add_buyer/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'buyer_name': name,
        'address': address,
        'phone_no': number,
      },
    );
    print(response.body);
  }

  Future<bool> removeBuyers({
    @required int buyerId,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(Uri.parse('$port/remove_buyer/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'buyer_id': buyerId.toString(),
    });
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  Future<void> updateBuyers({
    @required String buyerId,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response =
        await post(Uri.parse('$port/update_buyer_description/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'buyer_name': buyerId,
    });
    print(response.body);
  }
}
