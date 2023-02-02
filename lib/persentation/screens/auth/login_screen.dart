import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/auth/sign_screen.dart';
import 'package:mughith/persentation/screens/home.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/auth/default_text_formfiled.dart';
import 'package:mughith/persentation/widget/auth/upper_side.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:mughith/persentation/widget/navigator.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondPrimary,
      body: ListView(
        children: [
          UpperSide(
            text: "Create an account?".tr,
            text2: "",
            onTap: () {
              Navigators.navigateTo(context, SignUpScreen());
            },
          ),
          Container(
            height: HeightSized.h80,
            width: double.infinity,
            padding: EdgeInsets.only(
                left: WidthSized.w8, right: WidthSized.w8, top: HeightSized.h8),
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(HeightSized.h4),
                  topRight: Radius.circular(HeightSized.h4),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CenterSideText(
                    text: "Let's Sign You In".tr,
                    fontS: FontSized.s20,
                    fontW: FontWeightManager.regular),
                SizedBox(
                  height: HeightSized.h1,
                ),
                CenterSideText(
                    text: "Welcome back, you've been missed!".tr,
                    fontS: FontSized.s12,
                    fontW: FontWeightManager.light),
                SizedBox(
                  height: HeightSized.h4,
                ),
                DefaultText(
                    text: "Email".tr,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.s12,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: emailCon,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    prefixIcon: Icons.email),
                SizedBox(
                  height: HeightSized.h1,
                ),
                DefaultText(
                    text: "password".tr,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.s12,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: passCon,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: Icons.lock),
                SizedBox(height: HeightSized.h4),
                DefaultButton(
                  text: "Sign in".tr,
                  onPressed: () {
                    Get.offAll(HomeScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
