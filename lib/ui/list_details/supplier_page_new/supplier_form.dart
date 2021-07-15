import 'package:flutter/material.dart';
import 'package:inventory_management/theme.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/controller/supplier_model.dart';

class SupplierForm extends StatelessWidget {
  const SupplierForm({
    Key key,
    @required this.formKey,
    @required this.supplierNameController,
    @required this.supplierNameNode,
    @required this.phoneNoController,
    @required this.phoneNoNode,
    @required this.addressController,
    @required this.addressNode,
    @required this.descriptionController,
    @required this.descriptionNode,
    this.enabled = true,
    @required this.suppliers,
    this.supplierName = "",
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  final TextEditingController supplierNameController;
  final TextEditingController phoneNoController;
  final TextEditingController addressController;
  final TextEditingController descriptionController;

  final FocusNode supplierNameNode;
  final FocusNode phoneNoNode;
  final FocusNode addressNode;
  final FocusNode descriptionNode;

  final bool enabled;

  final List<SupplierModel> suppliers;
  final String supplierName;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            formField(
              label: "Supplier Name",
              controller: supplierNameController,
              focusNode: supplierNameNode,
              required: true,
              enabled: enabled,
              autofocus: true,
              textInputAction: TextInputAction.next,
              onEditingComplete: phoneNoNode.requestFocus,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Field is mandatory";
                }
                if (value != supplierName) {
                  final index = suppliers.indexWhere(
                      (_supplier) => _supplier.supplierName == value);
                  if (index != -1) {
                    return "Supplier Name already exists";
                  }
                }
                return null;
              },
            ),
            formField(
              label: "Phone Number",
              controller: phoneNoController,
              focusNode: phoneNoNode,
              required: true,
              maxLines: 1,
              enabled: enabled,
              textInputAction: TextInputAction.next,
              onEditingComplete: addressNode.requestFocus,
              prefixText: "+91 ",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Field is mandatory";
                }
                value = value.trim().replaceAll(' ', '');
                final number = int.tryParse(value);
                if (number == null) {
                  return "Invalid phone number";
                }
                return null;
              },
            ),
            formField(
              label: "Address",
              controller: addressController,
              focusNode: addressNode,
              required: true,
              enabled: enabled,
              textInputAction: TextInputAction.next,
              onEditingComplete: descriptionNode.requestFocus,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Field is mandatory";
                }
                return null;
              },
            ),
            formField(
              label: "Description",
              controller: descriptionController,
              focusNode: descriptionNode,
              maxLines: 6,
              enabled: enabled,
              textInputAction: TextInputAction.done,
              onEditingComplete: FocusScope.of(context).unfocus,
            ),
          ],
        ),
      ),
    );
  }

  Widget formField({
    @required String label,
    @required TextEditingController controller,
    FocusNode focusNode,
    TextInputAction textInputAction,
    VoidCallback onEditingComplete,
    int maxLines = 2,
    bool enabled = true,
    bool autofocus = false,
    bool required = false,
    String prefixText,
    FormFieldValidator<String> validator,
  }) {
    return LabeledFormField(
      label: Row(
        children: [
          Text(
            label,
            style: theme.textTheme.subtitle2,
          ),
          if (required)
            Text(
              "*",
              style: theme.textTheme.subtitle2.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          enabled: enabled,
          autofocus: autofocus,
          minLines: 1,
          maxLines: maxLines,
          style: theme.textTheme.bodyText1,
          decoration: InputDecoration(
            prefixText: prefixText,
            prefixStyle: theme.textTheme.bodyText1,
            errorMaxLines: 2,
          ),
          textInputAction: textInputAction,
          onEditingComplete: onEditingComplete,
          validator: validator,
        ),
      ),
    );
  }
}
