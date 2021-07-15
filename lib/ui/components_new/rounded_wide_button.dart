import 'package:flutter/material.dart';
import '../../theme.dart';

class RoundedWideButton extends StatelessWidget {
  const RoundedWideButton({
    Key key,
    @required this.child,
    @required this.onTap,
  }) : super(key: key);

  final Widget child;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Ink(
          width: 220,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground,
            borderRadius: BorderRadius.circular(100),
          ),
          child: child,
        ),
      ),
    );
  }
}
