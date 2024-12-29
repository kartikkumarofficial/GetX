import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  var currentLocale = Locale('en', 'US').obs; // Reactive Locale

  void toggleLanguage() {
    if (currentLocale.value.languageCode == 'en') {
      currentLocale.value = Locale('hi', 'IN');
    } else {
      currentLocale.value = Locale('en', 'US');
    }
    Get.updateLocale(currentLocale.value);
  }
}
