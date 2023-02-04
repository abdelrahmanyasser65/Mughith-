import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mughith/persentation/screens/home/home.dart';


class LoginController extends GetxController
{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  FirebaseAuth auth =FirebaseAuth.instance;
  @override
  void onInit() {
    email=TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
   email.dispose();
   password.dispose();
    super.dispose();
  }

  confirmLogin()
  {
    auth.signInWithEmailAndPassword(
        email: email.text,
        password: password.text
    ).then(
            (value) => Get.off(HomeScreen())).catchError((e)=>print(e.toString()));
  }
}