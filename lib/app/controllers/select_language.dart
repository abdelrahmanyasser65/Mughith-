import 'package:get/get.dart';
import 'package:mughith/app/utils/language_options.dart';
import 'package:mughith/app/utils/shared_keys.dart';
import 'package:mughith/app/utils/sharedpreferences.dart';
import 'package:mughith/persentation/screens/auth/login_screen.dart';

class SelectLanguageController extends GetxController {
  setLanguage(LanguageOptions language) async {
    try {
      await PreferenceUtils.setString(
          SharedKeys.selectedLanguage.toString(), language.toString());
      Get.to(LoginScreen());
    } catch (e) {
      print(e.toString());
    }
  }
}
