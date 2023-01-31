import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/app/utils/language_options.dart';
import 'package:mughith/app/utils/shared_keys.dart';
import 'package:mughith/app/utils/sharedpreferences.dart';
// import 'package:mughith/persentation/screens/auth/login_screen.dart';
import 'package:mughith/persentation/screens/home.dart';

class SelectLanguageController extends GetxController {
  setLanguage(LanguageOptions language) async {
    try {
      await PreferenceUtils.setString(
          SharedKeys.selectedLanguage.toString(), language.toString());
      if (language == LanguageOptions.en) {
        Get.updateLocale(const Locale('en', 'US'));
      } else {
        Get.updateLocale(const Locale('ar', 'EG'));
      }

      Get.to(const HomeScreen());
    } catch (e) {
      print(e.toString());
    }
  }
}
