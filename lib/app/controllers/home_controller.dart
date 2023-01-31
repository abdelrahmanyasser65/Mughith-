import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
{


  //drawer
  List<String> drawerString = [
    "Profile".tr ,
    "notifications".tr,
    "Language".tr ,
    "Logout".tr ,
  ];
  List<IconData> drawerIcons = [
    Icons.person,
    Icons.notifications,
    Icons.language,
    Icons.logout,
  ];

  List<dynamic> goToScreen = [

  ];
}