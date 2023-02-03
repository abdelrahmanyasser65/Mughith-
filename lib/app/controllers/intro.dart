import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/app/utils/shared_keys.dart';
import 'package:mughith/app/utils/sharedpreferences.dart';
import 'package:mughith/persentation/screens/auth/login_screen.dart';
import 'package:mughith/persentation/screens/onBoarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/models/on_boarding_models.dart';

class IntroController extends GetxController{
 PageController pageController = PageController();
  int currentIndex = 0  ;

  moveFromSplashScreen()async{
    bool isNotFirst=await PreferenceUtils.getBool(SharedKeys.isNotFirst.toString());
  if(isNotFirst){
    Get.off(OnBoardingScreen());
  }else{
    Get.off(LoginScreen());
  }
  }


  moveToLoginScreen()
  {
    if(currentIndex==boardingList.length-1)
      {
        PreferenceUtils.setBool(SharedKeys.isNotFirst.toString(), true);
        Get.off(LoginScreen());
      }
    else
      {
        pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
      }

  }

  changeCurrentIndex(value)
  {
    currentIndex=value ;
    update();
  }

  skipButton()
  {
    PreferenceUtils.setBool(SharedKeys.isNotFirst.toString(), true);
    Get.off(LoginScreen());
  }

}
