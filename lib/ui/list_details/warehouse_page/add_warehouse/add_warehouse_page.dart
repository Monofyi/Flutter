import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:inventory_management/ui/components/enter_key_alert.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:provider/provider.dart';

import 'controller/add_warehouse_controller.dart';
import 'controller/model.dart';

class AddNewWarehouse extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AddWarehouseController, WarehouseModel>(
          create: (context) {
            return AddWarehouseController(context.read());
          },
        )
      ],
      child: AddNewWarehouse(),
    );
  }

  static const routeName = '/newBuyer';
  const AddNewWarehouse({Key key}) : super(key: key);
  @override
  _AddNewWarehouseState createState() => _AddNewWarehouseState();
}

class _AddNewWarehouseState extends State<AddNewWarehouse> {
  int len;
  List<Widget> list;
  @override
  void initState() {
    len = 0;
    super.initState();
    list = [];
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AddWarehouseController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Buyer'),
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
                  label: 'Buyer Name',
                  onChanged: controller.updateBuyerName,
                ),
                BuildInputField(
                  label: 'Address',
                  onChanged: controller.updateAddress,
                ),
                BuildInputField(
                  label: 'Contact number',
                  onChanged: controller.updateContactNumber,
                ),
                const BuildInputField(
                  label: 'Description',
                  maxLine: 8,
                ),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () async {
                    final label =
                        await EnterKeyName.show(context, onDelete: () {});
                    setState(
                      () {
                        list.add(
                          BuildInputField(
                            label: label,
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('+add'),
                ),
                for (var i in list)
                  Stack(children: [
                    i,
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            list.remove(i);
                          });
                        },
                        child: const Icon(Icons.cancel),
                      ),
                    ),
                  ]),
                const SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  onPressed: controller.addSupplier,
                  child: const Text('Add supplier'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
