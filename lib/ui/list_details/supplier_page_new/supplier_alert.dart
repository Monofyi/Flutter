import 'package:flutter/material.dart';
import 'package:inventory_management/theme.dart';
import 'package:inventory_management/ui/list_details/supplier_page_new/supplier_confirmation.dart';

class SupplierAlertArgument {
  final String captionMessage;
  final String alertMessage;
  final Function callback;

  SupplierAlertArgument({
    @required this.captionMessage,
    @required this.alertMessage,
    @required this.callback,
  });
}

class SupplierAlert extends StatefulWidget {
  static String routeName = '/supplierAlert';
  final String captionMessage;
  final String alertMessage;
  final Function callback;

  const SupplierAlert({
    Key key,
    @required this.captionMessage,
    @required this.alertMessage,
    @required this.callback,
  }) : super(key: key);

  @override
  _SupplierAlertState createState() => _SupplierAlertState();
  static Widget wrapped(SupplierAlertArgument supplierAlertArgument) {
    return SupplierAlert(
      captionMessage: supplierAlertArgument.captionMessage,
      alertMessage: supplierAlertArgument.alertMessage,
      callback: supplierAlertArgument.callback,
    );
  }
}

class _SupplierAlertState extends State<SupplierAlert> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme,
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(),
              RichText(
                text: TextSpan(
                  style: theme.textTheme.bodyText1.copyWith(
                    height: 1.75,
                    fontSize: 17,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: "You are trying to "),
                    TextSpan(
                      text: widget.captionMessage,
                      style: theme.textTheme.subtitle2,
                    ),
                    const TextSpan(
                      text: ". Please do confirm if it is what you want to do?",
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 1,
                      color: theme.shadowColor,
                    )
                  ],
                  color: theme.cardColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      widget.alertMessage,
                      style: theme.textTheme.bodyText1,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.maybePop(context);
                          },
                          child: Text(
                            "Discard",
                            style: theme.textTheme.subtitle1
                                .copyWith(color: theme.errorColor),
                          ),
                        ),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () {
                            widget.callback();
                            Navigator.pushReplacementNamed(
                                context, "/supplierConfirmation");
                          },
                          child: const Text("Save"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
