import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/wastage/wastage_repository.dart';
import 'package:inventory_management/ui/reutilization/resutilization_list_model.dart';
import 'package:state_notifier/state_notifier.dart';

class ReutilizationController extends StateNotifier<ReutilizationList> {
  final WastageRepository wastageRepository;
  ReutilizationController({@required this.wastageRepository})
      : super(const ReutilizationList()) {
    initialize();
  }
  Future<void> initialize() async {
    final suppliers = await wastageRepository.fetchWastage();
    //state = state.copyWith(loading: false, wastage: suppliers);
  }

  Future<void> refresh() async {
    //state = state.copyWith(loading: true);
    final suppliers = await wastageRepository.fetchWastage();
    //state = state.copyWith(loading: false, wastage: suppliers);
  }
}
