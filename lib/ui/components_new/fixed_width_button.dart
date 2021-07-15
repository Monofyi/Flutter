import 'package:flutter/material.dart';

import '../../theme.dart';

class FixedWidthButton extends StatelessWidget {
  const FixedWidthButton({
    Key key,
    @required this.text,
    this.icon,
    this.color,
    this.callback,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color color;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => callback != null ? callback() : null,
      style: theme.elevatedButtonTheme.style.copyWith(
        fixedSize: MaterialStateProperty.all<Size>(
          const Size.fromWidth(130),
        ),
      ),
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
