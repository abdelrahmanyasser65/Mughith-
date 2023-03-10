import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/auth/login_screen.dart';
import 'package:mughith/persentation/screens/home/home.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/auth/default_text_formfiled.dart';
import 'package:mughith/persentation/widget/auth/upper_side.dart';
import 'package:mughith/persentation/widget/default_text.dart';

import '../../../app/controllers/auth/register_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondPrimary,
      body: ListView(
        children: [
          UpperSide(
            text: "Already have an account?".tr,
            text2: "Sign in".tr,
            onTap: () {
              Get.offAll(LoginScreen());
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
                    text: "Getting Started".tr,
                    fontS: FontSized.s20,
                    fontW: FontWeightManager.regular),
                SizedBox(
                  height: HeightSized.h1,
                ),
                CenterSideText(
                    text: "Create an account to continue!".tr,
                    fontS: FontSized.s12,
                    fontW: FontWeightManager.light),
                SizedBox(
                  height: HeightSized.h2,
                ),
                DefaultText(
                    text: "Full Name".tr,
                    color: ColorManager.textColor2,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: controller.fullName,
                    textInputType: TextInputType.name,
                    obscureText: false,
                    prefixIcon: Icons.account_circle_rounded),
                SizedBox(
                  height: HeightSized.h1,
                ),
                DefaultText(
                    text: "Email".tr,
                    color: ColorManager.textColor2,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: controller.email,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    prefixIcon: Icons.email),
                SizedBox(
                  height: HeightSized.h1,
                ),
                DefaultText(
                    text: "password".tr,
                    color: ColorManager.textColor2,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: controller.password,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: Icons.lock),
                SizedBox(height: HeightSized.h4),
                DefaultButton(
                    color: ColorManager.primary,
                    text: "SIGN UP".tr, onPressed: () {
                      controller.confirmRegister();
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
