import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/languages.dart';
import 'package:getx/screen2.dart';
import 'screen3.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Use GetMaterialApp instead of MaterialApp
      debugShowCheckedModeBanner: false,
      title: 'GetX Theme Demo',
      translations: Languages(),
      locale: Locale('en','US'), //default is english
      fallbackLocale: Locale('en','US'),
      theme: ThemeData.dark(), // Default theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: ThemeMode.light, // Initial theme mode
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page:()=> HomePage()),
        GetPage(name: '/screentwo', page:()=> screen2()),
        GetPage(name: '/screenthree', page:()=> screen3()),
      ],
    );
  }
}
