import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/prinitng/printing_repository.dart';
import 'package:inventory_management/ui/printing/start_printing/start_printing_model.dart';
import 'package:state_notifier/state_notifier.dart';

class StartPrintingController extends StateNotifier<StartPrintingModel> {
  final PrintingRepository printingRepository;
  StartPrintingController({@required this.printingRepository})
      : super(
          const StartPrintingModel(),
        ) {
    startPrinting();
  }
  Future<void> startPrinting() async {
    await printingRepository.startPrinting(
      goodsName: state.goodsName,
      expectedGoodOutput: state.expectedGoodOutput,
      rawMatInput: state.rawMatInput,
      rawMaterial: state.rawMaterial,
      machineName: state.machineName,
      description: state.description,
    );
  }

  void updateGoodsName(String name) {
    if (name != null) {
      state = state.copyWith(
        goodsName: name,
      );
    }
  }

  void updateExpectedGoodOutput(String number) {
    final output = int.parse(number);

    if (number != null) {
      state = state.copyWith(expectedGoodOutput: output);
    }
  }

  void rawInput(String number) {
    final output = int.parse(number);

    if (number != null) {
      state = state.copyWith(rawMatInput: output);
    }
  }

  void rawMaterial(String material) {
    state = state.copyWith(rawMaterial: material);
  }

  void machineName(String name) {
    if (name != null) {
      state = state.copyWith(machineName: name);
    }
  }

  void description(String name) {
    if (name != null) {
      state = state.copyWith(description: name);
    }
  }
}
