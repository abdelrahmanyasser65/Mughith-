import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/app/controllers/new_state_controller.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/custom_text_formfiled.dart';
import 'package:mughith/persentation/widget/default_text.dart';



class NewStateScreen extends StatelessWidget {
   NewStateScreen({Key? key}) : super(key: key);
  final NewStateController controller= Get.put(NewStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.only(
          left: WidthSized.w8,
          right: WidthSized.w8,
          top: HeightSized.h8,

      ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.white
                  ),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      icon: Icon(Icons.arrow_back_outlined,
                        color: ColorManager.iconColor,)),
                ),
                SizedBox(width: WidthSized.w12,),
                CenterSideText(
                  text: "Add New State".tr,
                  fontS:  FontSized.s18,
                  fontW:  FontWeightManager.semiBold,)
              ],
            ),
            Expanded(
              child: ListView(
                physics:const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: HeightSized.h2,
                  ),
                  DefaultText(
                      text: "Name of State".tr,
                      color: ColorManager.textColor2,
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.medium),
                  CustomTextFormFiled(
                    hintText: 'mostafa samir mostafa samir'.tr,
                    controller:controller.nameController ,
                    textInputType:TextInputType.text ,
                  ),
                  SizedBox(
                    height: HeightSized.h3,
                  ),
                  DefaultText(
                    text: "National Card".tr,
                    color: ColorManager.textColor2,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.medium,
                  ),
                  CustomTextFormFiled(
                    controller:controller.imageController ,
                    textInputType:TextInputType.text ,
                    onTap: () => controller.pickImage(),
                    showCursor: false,
                    suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: HeightSized.h1
                        ),
                        child: Icon(Icons.camera_alt_rounded,color: ColorManager.iconColor,)),
                  ),
                  SizedBox(
                    height: HeightSized.h3,
                  ),
                  DefaultText(
                      text: "The target Number".tr,
                      color: ColorManager.textColor2,
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.medium
                  ),
                  CustomTextFormFiled(
                    controller:controller.targetController ,
                    textInputType:TextInputType.number ,
                    hintText: "i.e 2000\$".tr,
                  ),
                  SizedBox(
                    height: HeightSized.h3,
                  ),
                  DefaultText(
                      text: "Last Date".tr,
                      color: ColorManager.textColor2,
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.medium
                  ),
                  CustomTextFormFiled(
                    controller: controller.dateController,
                    textInputType: TextInputType.text,
                    hintText: '2-2-2023'.tr,
                    onTap: () => controller.chooseDate(context)
                    ,),
                  SizedBox(
                    height: HeightSized.h3,
                  ),
                  DefaultText(
                      text: "Description".tr,
                      color: ColorManager.textColor2,
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.medium
                  ),
                  CustomTextFormFiled(
                    controller: controller.descriptionController,
                    textInputType: TextInputType.text,
                    maxLines: 10,

                  ),
                  SizedBox(
                    height: HeightSized.h6,
                  ),
                  DefaultButton(onPressed: (){

                  },text: 'Submit'.tr,color: ColorManager.primary,),
                  SizedBox(
                    height: HeightSized.h4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
