import 'package:flutter/material.dart';
import 'package:inventory_management/theme.dart';
import 'package:inventory_management/ui/components_new/gradient_widget.dart';
import 'package:inventory_management/ui/components_new/rounded_wide_button.dart';
import 'package:inventory_management/ui/list_details/supplier_page/controller/supplier_controller/supplier_list/supplier_list_model.dart';
import 'package:inventory_management/ui/list_details/supplier_page_new/supplier_alert.dart';
import 'package:inventory_management/ui/list_details/supplier_page_new/supplier_form.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'controller/supplier_controller/suppliers_list_controller.dart';

class SupplierAdd extends StatefulWidget {
  static String routeName = '/supplierAdd';

  const SupplierAdd({Key key}) : super(key: key);

  @override
  _SupplierAddState createState() => _SupplierAddState();
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SuppliersListController, SupplierList>(
          lazy: false,
          create: (context) => SuppliersListController(),
        )
      ],
      child: const SupplierAdd(),
    );
  }
}

class _SupplierAddState extends State<SupplierAdd> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _supplierNameController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final FocusNode _supplierNameNode = FocusNode();
  final FocusNode _phoneNoNode = FocusNode();
  final FocusNode _addressNode = FocusNode();
  final FocusNode _descriptionNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final vm = context.select((SupplierList value) => value);
    final controller = context.watch<SuppliersListController>();
    final suppliers = vm.suppliers;
    return Theme(
      data: theme,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: GradientWidget(
                  gradient: secondaryGradient,
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    size: 36,
                  ),
                ),
                onPressed: () => Navigator.maybePop(context),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SupplierForm(
                          formKey: _formKey,
                          supplierNameController: _supplierNameController,
                          supplierNameNode: _supplierNameNode,
                          phoneNoController: _phoneNoController,
                          phoneNoNode: _phoneNoNode,
                          addressController: _addressController,
                          addressNode: _addressNode,
                          descriptionController: _descriptionController,
                          descriptionNode: _descriptionNode,
                          enabled: true,
                          suppliers: suppliers,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              confirmAdd(controller),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget confirmAdd(SuppliersListController controller) {
    return RoundedWideButton(
      onTap: () {
        if (_formKey.currentState.validate()) {
          Navigator.pushNamed(
            context,
            SupplierAlert.routeName,
            arguments: SupplierAlertArgument(
              captionMessage: "add new supplier",
              alertMessage: "Save up the Details?",
              callback: () => controller.addSupplier(
                supplierName: _supplierNameController.text,
                phoneNo: _phoneNoController.text,
                address: _addressController.text,
                description: _descriptionController.text,
              ),
            ),
          );
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: GradientWidget(
              gradient: secondaryGradient,
              child: Text(
                "Confirm",
                style: theme.textTheme.headline6,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: secondaryGradient,
            ),
            padding: const EdgeInsets.all(3),
            child: Icon(
              Icons.check,
              color: theme.colorScheme.onSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
