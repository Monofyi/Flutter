import 'package:flutter/material.dart';

class RaisedButtons extends StatelessWidget {
  final Color color;
  final Function function;
  final Text text;
  final Icon icons;

  const RaisedButtons({
    Key key,
     this.color,
     this.function,
     this.text,
     this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {
        function();
      },
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [text, icons]),
    );
  }
}
