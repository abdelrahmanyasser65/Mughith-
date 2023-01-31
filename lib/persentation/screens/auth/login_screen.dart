import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/strings_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/auth/default_text_formfiled.dart';
import 'package:mughith/persentation/widget/auth/upper_side.dart';
import 'package:mughith/persentation/widget/default_text.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
final TextEditingController emailCon=TextEditingController();
 final  TextEditingController passCon=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: ColorManager.secondPrimary,
      body: ListView(
        children: [
          const UpperSide(text: AppString.createAccount),
          Container(
            height:HeightSized.h78,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: WidthSized.w8,
              right: WidthSized.w8,
              //bottom: HeightSized.h12,
              top: HeightSized.h12
            ),
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(HeightSized.h4) ,
                  topRight: Radius.circular(HeightSized.h4),
                )
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CenterSideText(
                    text: AppString.letsSign,
                    fontS: FontSized.s20,
                    fontW: FontWeightManager.regular),
                SizedBox(
                  height: HeightSized.h1,
                ),
                CenterSideText(
                    text: AppString.welcome,
                    fontS: FontSized.s12,
                    fontW: FontWeightManager.light),
                SizedBox(
                  height: HeightSized.h8,
                ),
                DefaultText(
                    text: AppString.email,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.medium),

                DefaultTextFormFiled(
                    controller: emailCon,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    prefixIcon: Icons.email),
                 SizedBox(height: HeightSized.h2,),
                DefaultText(
                    text: AppString.password,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.medium),

                DefaultTextFormFiled(
                    controller: passCon,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: Icons.lock),
                 SizedBox(height: HeightSized.h12),
                 DefaultButton(text: AppString.signIn,
                   onPressed: (){})



              ],
            ),
          ),
        ],
      ),
    );
  }
}
