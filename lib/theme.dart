import 'package:flutter/material.dart';

Color lightBlue1 = const Color(0xFF2CCEFF);
Color lightBlue2 = const Color(0xFF33CFFF);
Color lightGrey = const Color(0xFFE5E5E5);
Color nearBlack = const Color(0xFF252525);
Color shadowBlack = const Color(0x19000000);

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: lightGrey,
  shadowColor: shadowBlack,
  appBarTheme: AppBarTheme(
    backgroundColor: nearBlack,
    centerTitle: true,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w400,
        foreground: Paint()..shader = textGradient,
      ),
    ),
    iconTheme: IconThemeData(
      color: lightBlue1,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: nearBlack,
    elevation: 3,
  ),
);

Shader textGradient = LinearGradient(
  colors: <Color>[
    lightBlue1,
    lightBlue2,
  ],
).createShader(
  const Rect.fromLTWH(0, 0, 200, 70),
);
