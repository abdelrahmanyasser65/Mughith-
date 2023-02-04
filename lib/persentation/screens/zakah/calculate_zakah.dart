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
import '../details/pay_screen.dart';

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
          'Zakat calculation'.tr,
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
                  'Zakat per person'.tr,
                  style: TextStyle(
                    fontSize: FontSized.s16,
                    fontWeight: FontWeightManager.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "50 ${'pound'.tr}",
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
              hint: "Enter the number of people".tr,
              prefixIcon: Icons.numbers,
            ),
            SizedBox(height: HeightSized.h6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DefaultButton(
                onPressed: () {
                  Get.defaultDialog(
                    title:'${int.parse(textEditingController.text)*50}${'total zakat'.tr}',
                    middleText: 'Do You Want To Pay Now ?'.tr,
                    textConfirm: 'yes'.tr,
                    textCancel: 'not now'.tr,
                    buttonColor: ColorManager.primary,
                    confirmTextColor: ColorManager.white,
                    cancelTextColor: ColorManager.black,
                    onConfirm: () => Get.to(const PaymentScreen()),
                    onCancel:()=> Get.back(),
                  );
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
