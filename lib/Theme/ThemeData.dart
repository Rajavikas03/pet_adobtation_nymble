import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color(0xFFECEFF1),
    // primary: Color(0xFFCFD8DC),
    // secondary: Color(0xFF90CAF9),
    // tertiary: Color(0xFFA5D6A7),
    // primaryContainer: Color(0xFF424242),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    // background: Color(0xFF37474F),
    //   primary: Color(0xFF263238),
    //   secondary: Color(0xFF673AB7),
    //   tertiary: Color(0xFF00796B),
    //   primaryContainer: Color(0xFF009688),
  ),
);
