import 'package:flutter/material.dart';
import 'package:inventory_management/theme.dart';
import 'package:inventory_management/ui/components_new/gradient_widget.dart';

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
    return SupplierDetails(
      supplierId: supplierDetailsArgument.supplierId,
      supplierName: supplierDetailsArgument.supplierName,
      phoneNo: supplierDetailsArgument.phoneNo,
      address: supplierDetailsArgument.address,
      description: supplierDetailsArgument.description,
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
                  gradient: accentGradient,
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
                          child: const Text(
                            "Supplier ID :",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        idContainer(
                          child: Text(
                            widget.supplierId,
                            style: TextStyle(color: shadowText),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                formField(
                                  label: "Supplier Name",
                                  controller: _supplierNameController,
                                  focusNode: _supplierNameNode,
                                  required: true,
                                  enabled: isEditing,
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  onEditingComplete: _phoneNoNode.requestFocus,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Field is mandatory";
                                    }
                                    return null;
                                  },
                                ),
                                formField(
                                  label: "Phone Number",
                                  controller: _phoneNoController,
                                  focusNode: _phoneNoNode,
                                  required: true,
                                  maxLines: 1,
                                  enabled: isEditing,
                                  textInputAction: TextInputAction.next,
                                  onEditingComplete: _addressNode.requestFocus,
                                  prefixText: "+91 ",
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Field is mandatory";
                                    }
                                    return null;
                                  },
                                ),
                                formField(
                                  label: "Address",
                                  controller: _addressController,
                                  focusNode: _addressNode,
                                  required: true,
                                  enabled: isEditing,
                                  textInputAction: TextInputAction.next,
                                  onEditingComplete:
                                      _descriptionNode.requestFocus,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Field is mandatory";
                                    }
                                    return null;
                                  },
                                ),
                                formField(
                                  label: "Description",
                                  controller: _descriptionController,
                                  focusNode: _descriptionNode,
                                  maxLines: 6,
                                  enabled: isEditing,
                                  textInputAction: TextInputAction.done,
                                  onEditingComplete:
                                      FocusScope.of(context).unfocus,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              isEditing ? confirmEdit() : editAndRemove(),
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
        color: lightGrey,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: shadowBlack,
            blurRadius: 7,
            spreadRadius: 1,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: child,
    );
  }

  Widget formField({
    @required String label,
    @required TextEditingController controller,
    FocusNode focusNode,
    TextInputAction textInputAction,
    void Function() onEditingComplete,
    int maxLines = 2,
    bool enabled = true,
    bool autofocus = false,
    bool required = false,
    String prefixText,
    String Function(String) validator,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              required
                  ? Text("*", style: TextStyle(color: orange1))
                  : Container(),
            ],
          ),
          TextFormField(
            controller: controller,
            focusNode: focusNode,
            enabled: enabled,
            autofocus: autofocus,
            minLines: 1,
            maxLines: maxLines,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: shadowText),
            decoration: InputDecoration(
              prefixText: prefixText,
              errorMaxLines: 2,
            ),
            textInputAction: textInputAction,
            onEditingComplete: onEditingComplete,
            validator: validator,
          ),
        ],
      ),
    );
  }

  Widget confirmEdit() {
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {
          if (_formKey.currentState.validate()) {
            setState(() {
              isEditing = false;
            });
          }
        },
        child: Ink(
          width: 220,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: nearBlack,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientWidget(
                gradient: accentGradient,
                child: Text(
                  "Confirm",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: accentGradient,
                ),
                padding: const EdgeInsets.all(3),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget editAndRemove() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        elevatedButton(
          icon: Icons.edit,
          text: "Edit",
          color: lightBlue1,
          callback: () {
            setState(() {
              isEditing = true;
            });
            WidgetsBinding.instance?.addPostFrameCallback(
              (_) => _supplierNameNode.requestFocus(),
            );
          },
        ),
        elevatedButton(
          icon: Icons.delete,
          text: "Remove",
          color: dangerRed,
          callback: () {},
        ),
      ],
    );
  }

  Widget elevatedButton({
    @required String text,
    IconData icon,
    Color color,
    Function callback,
  }) {
    return ElevatedButton(
      onPressed: () => callback != null ? callback() : null,
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: color,
            ),
            RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.horizontal_rule_rounded,
                color: color,
              ),
            )
          ],
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: color),
            ),
          ),
        ],
      ),
    );
  }
}
