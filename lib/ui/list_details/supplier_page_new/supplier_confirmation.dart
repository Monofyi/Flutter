import 'package:flutter/material.dart';
import 'package:inventory_management/theme.dart';
import 'package:inventory_management/ui/components_new/gradient_widget.dart';
import 'package:inventory_management/ui/components_new/rounded_wide_button.dart';

class SupplierConfirmation extends StatefulWidget {
  static String routeName = '/supplierConfirmation';

  const SupplierConfirmation({Key key}) : super(key: key);

  @override
  _SupplierConfirmationState createState() => _SupplierConfirmationState();
  static Widget wrapped() {
    return const SupplierConfirmation();
  }
}

class _SupplierConfirmationState extends State<SupplierConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.colorScheme.onSurface,
                          ),
                          padding: const EdgeInsets.all(3),
                          child: GradientWidget(
                            gradient: secondaryGradient,
                            child: const Icon(Icons.check),
                          ),
                        ),
                        const SizedBox(width: 12),
                        GradientWidget(
                          gradient: secondaryGradient,
                          child: Text(
                            "Success",
                            style: theme.textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Change request is accepted.",
                      style: theme.textTheme.bodyText1.copyWith(fontSize: 17.5),
                    )
                  ],
                ),
                const Expanded(
                  child: Icon(
                    Icons.check,
                    size: 100,
                  ),
                ),
                RoundedWideButton(
                  onTap: () {
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName("/home"),
                    );
                    Navigator.pushNamed(
                      context,
                      "/suppliersList",
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          "Back to Suppliers",
                          style: theme.textTheme.headline6
                              .copyWith(color: theme.colorScheme.surface),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.colorScheme.surface,
                        ),
                        padding: const EdgeInsets.all(3),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
