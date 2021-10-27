import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  textTheme: GoogleFonts.latoTextTheme(),
  primaryColor: Colors.grey[100],
  scaffoldBackgroundColor: Colors.black,
  colorScheme: const ColorScheme.light(),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),
);
