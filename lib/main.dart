import 'package:flutter/material.dart';
import 'package:shoppinh_app/screens/home_screen.dart';
import 'package:shoppinh_app/theme/dark_theme.dart';
import 'package:shoppinh_app/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppinh App',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
