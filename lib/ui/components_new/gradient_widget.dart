import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  final Widget child;
  final Gradient gradient;

  const GradientWidget({
    Key key,
    this.child,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect bounds) {
        final rect = Rect.fromLTRB(0, 0, bounds.width, bounds.height);
        return gradient.createShader(rect);
      },
      child: child,
    );
  }
}
