import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/custom_dialog.dart';

import '../../resources/color_manager.dart';
import '../../widget/auth/default_button.dart';
import '../../widget/auth/default_text_formfiled.dart';

class CalculateZakah extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManager.black,
        ),
        title: Text(
          "Calculate Zakah",
          style: TextStyle(
            color: ColorManager.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.secondPrimary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الزكاه للفرد",
                  style: TextStyle(
                    fontSize: FontSized.s16,
                    fontWeight: FontWeightManager.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "50 جنيه",
                  style: TextStyle(
                    fontSize: FontSized.s16,
                    fontWeight: FontWeightManager.bold,
                    color: ColorManager.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: HeightSized.h6),
            DefaultTextFormFiled(
              controller: textEditingController,
              obscureText: false,
              textInputType: TextInputType.number,
              hint: "أدخل عدد الافراد",
              prefixIcon: Icons.numbers,
            ),
            SizedBox(height: HeightSized.h6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DefaultButton(
                onPressed: () {
                  // Get.back();
                  CustomDialog.showSuccessDialog().then((value) {
                    // Get.to(page)
                  });
                },
                text: "Calculate".tr,
                color: ColorManager.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
