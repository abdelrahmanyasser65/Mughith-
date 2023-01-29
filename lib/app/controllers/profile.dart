import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  changeLanguage(String locale) {
    if (locale == "en") {
      Get.updateLocale(const Locale('en', 'US'));
    } else {
      Get.updateLocale(const Locale('ar', 'EG'));
    }
    Get.back();
  }

  // changeTheme(BuildContext context, bool isDark) async {
  //   if (isDark) {
  //     Get.changeThemeMode(ThemeMode.light);
  //   } else {
  //     Get.changeThemeMode(ThemeMode.dark);
  //   }
  //   Get.back();
  // }
}
