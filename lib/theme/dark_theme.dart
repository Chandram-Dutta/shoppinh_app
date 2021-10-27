import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.grey[900],
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
);
