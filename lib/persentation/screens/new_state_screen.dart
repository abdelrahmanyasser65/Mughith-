import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/controllers/new_state_controller.dart';
import '../resources/color_manager.dart';
import '../resources/fonts.dart';
import '../widget/auth/default_button.dart';
import '../widget/custom_text_formfiled.dart';
import '../widget/default_text.dart';

class NewStateScreen extends StatelessWidget {
   NewStateScreen({Key? key}) : super(key: key);
  final NewStateController controller= Get.put(NewStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:DefaultText(
            text: "Add New State".tr,
            color: ColorManager.textColor2,
            fontSize: FontSized.s20,
            fontWeight: FontWeightManager.bold),
        backgroundColor: ColorManager.secondPrimary,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DefaultText(
              text: "Name Of State".tr,
              color: ColorManager.textColor2,
              fontSize: FontSized.s12,
              fontWeight: FontWeightManager.medium,
          ),
          CustomTextFormFiled(
            hintText: 'mostafa samir mostafa samir'.tr,
              controller:controller.nameController ,
              textInputType:TextInputType.text ,
          ),
          DefaultText(
              text: "National Card".tr,
              color: ColorManager.textColor2,
              fontSize: FontSized.s12,
              fontWeight: FontWeightManager.medium,
          ),
          CustomTextFormFiled(
              controller:controller.imageController ,
              textInputType:TextInputType.text ,
            onTap: () => controller.pickImage(),
          ),
          DefaultText(
              text: "The target Number".tr,
              color: ColorManager.textColor2,
              fontSize: FontSized.s12,
              fontWeight: FontWeightManager.medium
          ),
          CustomTextFormFiled(
            controller:controller.targetController ,
            textInputType:TextInputType.number ,
            hintText: "i.e 2000\$".tr,
          ),
          DefaultText(
              text: "Last Date".tr,
              color: ColorManager.textColor2,
              fontSize: FontSized.s12,
              fontWeight: FontWeightManager.medium
          ),
          CustomTextFormFiled(
            controller: controller.dateController,
            textInputType: TextInputType.text,
            hintText: '2-2-2023'.tr,
            onTap: () => controller.chooseDate(context)
            ,),
          DefaultText(
              text: "Description".tr,
              color: ColorManager.textColor2,
              fontSize: FontSized.s12,
              fontWeight: FontWeightManager.medium
          ),
          CustomTextFormFiled(
            controller: controller.descriptionController,
            textInputType: TextInputType.text,
            ),
          DefaultButton(onPressed: (){

          },text: 'Submit'.tr,color: ColorManager.primary,)
        ],
      ),
    );
  }
}
