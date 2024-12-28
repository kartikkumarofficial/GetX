import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Use GetMaterialApp instead of MaterialApp
      title: 'GetX Theme Demo',
      theme: ThemeData.light(), // Default theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: ThemeMode.light, // Initial theme mode
      home: HomePage(),
    );
  }
}
