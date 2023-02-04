import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/image_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/home/home.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/auth/default_text_formfiled.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:mughith/persentation/widget/profile_widget.dart';
import 'package:sizer/sizer.dart';

import '../widget/auth/default_text_formfiled.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
 final TextEditingController nameController=TextEditingController();
  final  TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text="Mostafa Samir";
    emailController.text='mostafasamir@gmail.com';
    return SafeArea(
      child: Scaffold(
        body:  ListView(
            children: [
              SizedBox(
                height: 60.h,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                             Image(
                              image:const AssetImage(ImageAssets.man),
                              height: HeightSized.h33,
                              width: HeightSized.h33,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              height: 11.h,
                              width: 7.h,
                              // decoration: BoxDecoration(
                              //   color: ColorManager.black.withOpacity(0.04),
                              //   shape: BoxShape.circle
                              // ),
                              margin:  EdgeInsets.symmetric(
                                vertical: HeightSized.h4,
                                horizontal: HeightSized.h2
                              ),
                              child: InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_outlined,
                                    size: 30,
                                  )),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: HeightSized.h25,
                              width: HeightSized.h16,
                              color: ColorManager.primary,
                            ),
                            Container(
                              padding:  EdgeInsets.only(
                                  left: HeightSized.h3,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultText(
                                    text:'Mostafa Samir',
                                    fontSize: 28.sp,
                                    fontWeight: FontWeightManager.bold,
                                    color: ColorManager.textColor2,

                                  ),
                                 SizedBox(
                                   height: HeightSized.h6,
                                 ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     SizedBox(
                      width: HeightSized.h4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         SizedBox(
                          height: HeightSized.h12,
                        ),
                         RotatedBox(
                          quarterTurns: 1,
                          child: DefaultText(
                            text:"Donate Now".tr,
                            fontWeight: FontWeightManager.semiBold,
                            fontSize: FontSized.s14,
                            color: ColorManager.textColor2,
                          ),
                        ),
                         SizedBox(
                          height: HeightSized.h3,
                        ),
                        InkWell(
                            onTap: () {
                              Get.to(HomeScreen());
                            },
                            child:  Icon(
                              Icons.add,
                              size: 32,
                              color: ColorManager.iconColor,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildColumn(title: "13", subTitle: "Donations".tr),
                  BuildColumn(title: "7", subTitle: "Added status".tr),
                  BuildColumn(title: "\$ 3500", subTitle: "Total amount".tr),

                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 2.h
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: HeightSized.h2,
                    ),
                    DefaultText(
                        text: "Full Name".tr,
                        color: ColorManager.textColor2,
                        fontSize: FontSized.s14,
                        fontWeight: FontWeightManager.medium),
                    DefaultTextFormFiled(
                        controller: nameController,
                        textInputType: TextInputType.name,
                        obscureText: false,
                        prefixIcon: Icons.account_circle_rounded),
                    DefaultText(
                        text: "Email".tr,
                        color: ColorManager.textColor2,
                        fontSize: FontSized.s14,
                        fontWeight: FontWeightManager.medium),
                    DefaultTextFormFiled(
                        controller: emailController,
                        textInputType: TextInputType.emailAddress,
                        obscureText: false,
                        prefixIcon: Icons.email),
                    SizedBox(height: 1.h,),
                    DefaultButton(onPressed: (){},
                        text: "UpDate".tr, color: ColorManager.primary),

                  ],
                ),
              )

            ],
          ),
      ),
    );
  }
}