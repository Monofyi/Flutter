import 'package:flutter/material.dart';
import 'package:inventory_management/theme.dart';
import 'package:inventory_management/ui/components_new/gradient_widget.dart';
import 'package:inventory_management/ui/list_details/supplier_page/controller/supplier_controller/supplier_list/supplier_list_model.dart';
import 'package:inventory_management/ui/list_details/supplier_page_new/supplier_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'controller/supplier_controller/suppliers_list_controller.dart';

class SuppliersListPage extends StatefulWidget {
  static const routeName = '/suppliersList';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SuppliersListController, SupplierList>(
          lazy: false,
          create: (context) => SuppliersListController(),
        )
      ],
      child: SuppliersListPage(),
    );
  }

  @override
  _SuppliersListPageState createState() => _SuppliersListPageState();
}

class _SuppliersListPageState extends State<SuppliersListPage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.select((SupplierList value) => value);
    // final controller = context.watch<SuppliersListController>();
    final suppliers = vm.suppliers;
    return Theme(
      data: theme,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: GradientWidget(
              gradient: primaryGradient,
              child: const Icon(
                Icons.keyboard_arrow_left_rounded,
                size: 36,
              ),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
          centerTitle: true,
          title: GradientWidget(
            gradient: primaryGradient,
            child: const Text("Suppliers"),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: GradientWidget(
            gradient: primaryGradient,
            child: const Icon(
              Icons.add,
              size: 36,
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 20,
          ),
          mainAxisSpacing: 30,
          crossAxisSpacing: 40,
          childAspectRatio: 3,
          children: List.generate(
            suppliers.length,
            (index) {
              return Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: theme.cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: theme.shadowColor,
                      blurRadius: 7,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      SupplierDetails.routeName,
                      arguments: SupplierDetailsArgument(
                        supplierId: suppliers[index].supplierId.toString(),
                        supplierName: suppliers[index].supplierName,
                        phoneNo: suppliers[index].phoneNumber.toString(),
                        address: suppliers[index].address,
                        description: suppliers[index].description,
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    child: Text(
                      suppliers[index].supplierName,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
