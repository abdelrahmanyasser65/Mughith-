import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/constants_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/image_manager.dart';
import 'package:mughith/persentation/screens/auth/login_screen.dart';
import 'package:mughith/persentation/screens/home/home.dart';
import 'package:mughith/persentation/screens/onBoarding/intro/select_language.dart';
import 'package:mughith/persentation/widget/default_text.dart';

import '../../../app/utils/shared_keys.dart';
import '../../../app/utils/sharedpreferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: AppConstants.splashDelay),
      () async {
        bool isNotFirst =
            await PreferenceUtils.getBool(SharedKeys.isNotFirst.toString());
        if (isNotFirst) {
          bool isLogin =
              await PreferenceUtils.getBool(SharedKeys.isLogin.toString());
          if (isLogin) {
            Get.off(HomeScreen());
          } else {
            Get.off(LoginScreen());
          }
        } else {
          Get.off(const SelectLanguageScreen());
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          ImageAssets.mugImage,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        DefaultText(
            text: "مُغيث",
            color: ColorManager.iconColor,
            fontSize: FontSized.s30,
            fontWeight: FontWeightManager.bold)
      ],
    ));
  }
}
