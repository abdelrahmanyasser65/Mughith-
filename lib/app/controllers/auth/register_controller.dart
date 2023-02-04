import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mughith/persentation/screens/home/home.dart';

class RegisterController extends GetxController
{
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  FirebaseAuth auth =FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    fullName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    fullName.dispose();
    super.dispose();
  }
  
  
  confirmRegister ()
  {
    auth.createUserWithEmailAndPassword(email: email.text, password: password.text).then((value) {
      firestore.collection('users').doc(auth.currentUser!.uid).set({
        'name':fullName.text.toString(),
        'email':email.text.toString(),
      },) ;
      Get.off(HomeScreen());
    }).catchError(
            (e){Get.snackbar('Error', e.toString());
            print(e.toString());
            });
  }
}