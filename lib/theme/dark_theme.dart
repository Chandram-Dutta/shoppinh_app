import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.grey[900],
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      color: Colors.white,
    ),
  ),
  dividerColor: Colors.white,
);
