import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: Colors.amber,
    scaffoldBackgroundColor: const Color(0xFFF9F6F0),
    cardTheme: const CardThemeData(elevation: 2),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.amber,
    cardTheme: const CardThemeData(elevation: 4),
  );
}
