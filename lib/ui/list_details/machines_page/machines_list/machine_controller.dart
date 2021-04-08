import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/warehouse/warehouse.dart';
import 'package:state_notifier/state_notifier.dart';

import 'warehouse_list_model.dart';

class MachineListController extends StateNotifier<MachineList> {
  final WarehouseRepository warehouseRepository;
  MachineListController({@required this.warehouseRepository})
      : super(const MachineList()) {
    initialize();
  }
  Future<void> initialize() async {
    final buyers = await warehouseRepository.fetchWarehouse();
    state = state.copyWith(loading: false, warehouses: buyers);
  }
}
