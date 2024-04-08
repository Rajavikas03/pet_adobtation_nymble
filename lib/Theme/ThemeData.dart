import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color(0xFFECEFF1),
    onBackground: Colors.black,
    primary: Color(0xff8964e3),
    secondary: Color(0xffc8c8c8),
    tertiary: Color(0xfffef7d6),
    primaryContainer: Color(0xfffee8c2),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Colors.black,
    primary: Color(0xff8964e3),
    onBackground: Colors.white,
    secondary: Color(0xffc8c8c8),
    tertiary: Color(0xFF00796B),
    primaryContainer: Color(0xffdfcffe),
  ),
);
