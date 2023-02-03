import 'package:get/get.dart';
import 'package:mughith/app/utils/shared_keys.dart';
import 'package:mughith/app/utils/sharedpreferences.dart';
import 'package:mughith/persentation/screens/auth/login_screen.dart';
import 'package:mughith/persentation/screens/onBoarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroController extends GetxController{

  moveToNextScreen()
  {
    PreferenceUtils.setBool(SharedKeys.isNotFirst.toString(), true);
    Get.off(LoginScreen());
    // update();
  }
  moveFromSplashScreen()async{
    bool isNotFirst=await PreferenceUtils.getBool(SharedKeys.isNotFirst.toString());
  if(isNotFirst){
    Get.off(OnBoardingScreen());
  }else{
    Get.off(LoginScreen());
  }
  }
}
