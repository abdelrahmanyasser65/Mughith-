import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';

import '../resources/color_manager.dart';
import '../resources/fonts.dart';
import '../resources/values_manager.dart';
import '../widget/auth/center_side_text.dart';

class OneTimeDonateScreen extends StatelessWidget {
  const OneTimeDonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManager.black,
        ),
        title: Text(
          "One Time Donate".tr,
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
          children: [
            Center(
              child: Text(
                "Help a person by one click".tr,
                style: TextStyle(
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSized.s14),
              ),
            ),
            DefaultButton(
              onPressed: () {},
              text: "Donate",
              color: ColorManager.primary,
            ),
          ],
        ),
      ),
    );
  }
}
