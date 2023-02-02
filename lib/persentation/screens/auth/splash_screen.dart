import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/constants_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/screens/intro/select_language.dart';
import 'package:mughith/persentation/widget/default_text.dart';

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
      () {
        Get.off(const SelectLanguageScreen());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: DefaultText(
          text: "مُغيث",
          color: ColorManager.white,
          fontSize: FontSized.s22,
          fontWeight: FontWeightManager.bold,
        ),
      ),
    );
  }
}
