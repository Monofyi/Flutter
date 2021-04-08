import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/supplier/supplier_repository.dart';
import 'package:inventory_management/ui/list_details/supplier_page/controller/supplier_controller/supplier_list/supplier_list_model.dart';
import 'package:state_notifier/state_notifier.dart';

class BuyerListController extends StateNotifier<SupplierList> {
  final SupplierRepository supplierRepository;
  BuyerListController({@required this.supplierRepository})
      : super(const SupplierList()) {
    initialize();
  }
  Future<void> initialize() async {
    final suppliers = await supplierRepository.fetchSuppliers();
    state = state.copyWith(loading: false, suppliers: suppliers);
  }
}
