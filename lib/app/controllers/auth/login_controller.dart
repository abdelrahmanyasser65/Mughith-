import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mughith/app/utils/shared_keys.dart';
import 'package:mughith/app/utils/sharedpreferences.dart';
import 'package:mughith/persentation/screens/home/home.dart';
import 'package:mughith/persentation/widget/custom_dialog.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  confirmLogin() {
    CustomDialog.showCustomDialogIndecator();
    auth
        .signInWithEmailAndPassword(email: email.text, password: password.text)
        .then((value) {
      PreferenceUtils.setBool(SharedKeys.isLogin.toString(), true);
      Get.off(
        HomeScreen(),
      );
    }).catchError((e) {
      Get.back();
      print(
        e.toString(),
      );
    });
  }

  Future logout() async {
    try {
      await auth.signOut();
      PreferenceUtils.setBool(SharedKeys.isLogin.toString(), false);
    } catch (e) {
      print(e.toString());
    }
  }
}
