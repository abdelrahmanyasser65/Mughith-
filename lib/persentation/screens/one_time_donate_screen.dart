import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/color_manager.dart';
import '../resources/fonts.dart';
import '../resources/values_manager.dart';
import '../widget/auth/center_side_text.dart';

class OneTimeDonateScreen extends StatelessWidget {
  const OneTimeDonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: ColorManager.white),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: ColorManager.iconColor,
                    )),
              ),
              SizedBox(
                width: WidthSized.w20,
              ),
              CenterSideText(
                text: "One Time Donate".tr,
                fontS: FontSized.s18,
                fontW: FontWeightManager.semiBold,
              ),
            ],
          ),
          SizedBox(
            height: HeightSized.h4,
          ),
          Center(
            child: Text(
              "Help a person by one click".tr,
              style: TextStyle(
                  fontWeight: FontWeightManager.bold, fontSize: FontSized.s14),
            ),
          )
        ],
      ),
    );
  }
}
