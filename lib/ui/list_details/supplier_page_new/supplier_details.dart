import 'package:flutter/material.dart';
import 'package:inventory_management/theme.dart';
import 'package:inventory_management/ui/components_new/fixed_width_button.dart';
import 'package:inventory_management/ui/components_new/gradient_widget.dart';
import 'package:inventory_management/ui/components_new/rounded_wide_button.dart';
import 'package:inventory_management/ui/list_details/supplier_page/controller/supplier_controller/supplier_list/supplier_list_model.dart';
import 'package:inventory_management/ui/list_details/supplier_page_new/supplier_alert.dart';
import 'package:inventory_management/ui/list_details/supplier_page_new/supplier_form.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'controller/supplier_controller/suppliers_list_controller.dart';

class SupplierDetailsArgument {
  final String supplierId;
  final String supplierName;
  final String phoneNo;
  final String address;
  final String description;

  SupplierDetailsArgument({
    @required this.supplierId,
    @required this.supplierName,
    @required this.phoneNo,
    @required this.address,
    @required this.description,
  });
}

class SupplierDetails extends StatefulWidget {
  static String routeName = '/supplierDetails';
  final String supplierId;
  final String supplierName;
  final String phoneNo;
  final String address;
  final String description;

  const SupplierDetails({
    Key key,
    @required this.supplierId,
    @required this.supplierName,
    @required this.phoneNo,
    @required this.address,
    @required this.description,
  }) : super(key: key);

  @override
  _SupplierDetailsState createState() => _SupplierDetailsState();
  static Widget wrapped(SupplierDetailsArgument supplierDetailsArgument) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SuppliersListController, SupplierList>(
          lazy: false,
          create: (context) => SuppliersListController(),
        )
      ],
      child: SupplierDetails(
        supplierId: supplierDetailsArgument.supplierId,
        supplierName: supplierDetailsArgument.supplierName,
        phoneNo: supplierDetailsArgument.phoneNo,
        address: supplierDetailsArgument.address,
        description: supplierDetailsArgument.description,
      ),
    );
  }
}

class _SupplierDetailsState extends State<SupplierDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _supplierNameController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final FocusNode _supplierNameNode = FocusNode();
  final FocusNode _phoneNoNode = FocusNode();
  final FocusNode _addressNode = FocusNode();
  final FocusNode _descriptionNode = FocusNode();

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    _supplierNameController.text = widget.supplierName;
    _phoneNoController.text = widget.phoneNo;
    _addressController.text = widget.address;
    _descriptionController.text = widget.description;
  }

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
              Expanded(
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                      crossAxisSpacing: 20,
                      childAspectRatio: 3,
                      shrinkWrap: true,
                      children: [
                        idContainer(
                          child: Text(
                            "Supplier ID :",
                            style: theme.textTheme.subtitle2,
                          ),
                        ),
                        idContainer(
                          child: Text(
                            widget.supplierId,
                            style: theme.textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
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
                          enabled: isEditing,
                          suppliers: suppliers,
                          supplierName: widget.supplierName,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              isEditing ? confirmEdit(controller) : editAndRemove(controller),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget idContainer({Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor,
            blurRadius: 7,
            spreadRadius: 1,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: child,
    );
  }

  Widget confirmEdit(SuppliersListController controller) {
    return RoundedWideButton(
      onTap: () {
        if (_formKey.currentState.validate()) {
          setState(() {
            isEditing = false;
          });
          Navigator.pushNamed(
            context,
            SupplierAlert.routeName,
            arguments: SupplierAlertArgument(
              captionMessage: "change details of the supplier",
              alertMessage: "Save up the new changes?",
              callback: () => controller.updateSupplier(
                supplierId: int.parse(widget.supplierId),
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

  Widget editAndRemove(SuppliersListController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        FixedWidthButton(
          icon: Icons.edit,
          text: "Edit",
          color: theme.colorScheme.primary,
          callback: () {
            setState(() {
              isEditing = true;
            });
            WidgetsBinding.instance?.addPostFrameCallback(
              (_) => _supplierNameNode.requestFocus(),
            );
          },
        ),
        FixedWidthButton(
          icon: Icons.delete_outline_rounded,
          text: "Remove",
          color: theme.errorColor,
          callback: () {
            Navigator.pushNamed(
              context,
              SupplierAlert.routeName,
              arguments: SupplierAlertArgument(
                captionMessage: "remove the supplier",
                alertMessage: "Remove this supplier?",
                callback: () => controller.deleteSupplier(
                  supplierId: int.parse(widget.supplierId),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
