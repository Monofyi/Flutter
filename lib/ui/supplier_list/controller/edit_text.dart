import 'package:flutter/material.dart';

class EditText extends StatelessWidget{

  final TextEditingController controller;
  final TextInputType textInputType;
  final TextAlign textAlign;
  final bool showTex;
  final String valueKey;

  const EditText({Key key,  this.controller,  this.textInputType,  this.textAlign,  this.showTex,  this.valueKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key:  ValueKey(valueKey),
      textAlign: textAlign,
      obscureText: showTex,
      decoration: InputDecoration(
        /*hintText: "Relience Ltd",*/
      ),
      keyboardType: textInputType,
      controller: controller,
    );
  }

}