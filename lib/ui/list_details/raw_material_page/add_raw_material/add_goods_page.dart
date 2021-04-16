import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/list_details/raw_material_page/add_raw_material/controller/raw_material_model.dart';
import 'package:provider/provider.dart';

import 'controller/add_raw_material_controller.dart';

class AddRawMaterials extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddRawMaterialController, RawMaterialModel>(
          create: (context) {
            return AddRawMaterialController(context.read());
          },
        )
      ],
      child: AddRawMaterials(),
    );
  }

  static const routeName = '/addRawMaterial';
  const AddRawMaterials({Key key}) : super(key: key);
  @override
  _AddRawMaterialsState createState() => _AddRawMaterialsState();
}

class _AddRawMaterialsState extends State<AddRawMaterials> {
  int _value;
  @override
  void initState() {
    // TODO: implement initState
    _value = 2;
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AddRawMaterialController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Raw Material'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildInputField(
                  label: 'Raw Material Name',
                  onChanged: controller.updateName,
                ),
                BuildInputField(
                    label: 'Quantity', onChanged: controller.updateQuantity),
                BuildInputField(
                  label: 'Location',
                  onChanged: controller.updateLocation,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 16),
                  child: DropdownButton<int>(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("Choose Tag"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("Others"),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("Raw Material"),
                        value: 1,
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      setState(
                        () {
                          controller.updateTag(value);
                          _value = value;
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: controller.addRawMaterial,
                  child: const Text('Add Raw Material'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
