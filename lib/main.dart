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
      // defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: '/', page:()=> HomePage()),
        GetPage(name: '/screentwo', page:()=> screen2() , transition: Transition.fadeIn,),
        GetPage(name: '/screenthree', page:()=> screen3()),
      ],
    );
  }
}




//obs=observable integer = any widget that depends on .obs will rebuild when var changes
//obs=observable widget = it is a widget that listens to observable variables  , when the variable changes in obs , it changes its value in obx hence changes the widget , eliminates the use of setstate