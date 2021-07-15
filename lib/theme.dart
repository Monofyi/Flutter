import 'package:flutter/material.dart';

Color white = const Color(0xFFFFFFFF);
Color lightBlue1 = const Color(0xFF2CCEFF);
Color lightBlue2 = const Color(0xFF33CFFF);
Color orange1 = const Color(0xFFF15A24);
Color orange2 = const Color(0xFFF68F1F);
Color dangerRed = const Color(0xFFB50000);
Color lightGrey = const Color(0xFFE5E5E5);
Color shadowText = const Color(0xFF9A9A9A);
Color nearBlack = const Color(0xFF252525);
Color shadowBlack = const Color(0x19000000);

ThemeData theme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    onBackground: nearBlack,
    background: lightGrey,
    error: dangerRed,
    onError: white,
    primary: lightBlue1,
    primaryVariant: lightBlue2,
    onPrimary: white,
    secondary: orange1,
    secondaryVariant: orange2,
    onSecondary: white,
    surface: white,
    onSurface: nearBlack,
  ),
  textTheme: TextTheme(
    headline6: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    bodyText1: TextStyle(
      color: shadowText,
    ),
    subtitle2: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  backgroundColor: lightGrey,
  scaffoldBackgroundColor: lightGrey,
  shadowColor: shadowBlack,
  appBarTheme: AppBarTheme(
    backgroundColor: nearBlack,
    centerTitle: true,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      headline6: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: nearBlack,
    elevation: 3,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(nearBlack),
      elevation: MaterialStateProperty.all<double>(2),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(6),
      ),
    ),
  ),
);

LinearGradient primaryGradient = LinearGradient(
  colors: <Color>[
    lightBlue1,
    lightBlue2,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

LinearGradient secondaryGradient = LinearGradient(
  colors: <Color>[
    orange1,
    orange2,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);