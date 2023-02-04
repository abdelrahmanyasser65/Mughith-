import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/image_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:sizer/sizer.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(ImageAssets.image),
            ),
            SizedBox(height: HeightSized.h1,),
            Text(
              "Help Them Smile Again".tr,
              style: TextStyle(
                fontSize: FontSized.s14,
              ),
            ),
            SizedBox(height: HeightSized.h1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Target".tr,
                      style: TextStyle(fontWeight: FontWeightManager.bold,
                          color: ColorManager.iconColor),
                    ),
                    Text(
                      "70,000",
                      style: TextStyle(color: ColorManager.textColor2,fontWeight: FontWeightManager.semiBold),
                    ),
                  ],
                ),
                Text(
                  "2 Days left".tr,
                  style: TextStyle(fontWeight: FontWeightManager.bold,
                      color: ColorManager.primary),
                )
              ],
            ),
            SizedBox(height: HeightSized.h1,),
            LinearProgressIndicator(
              value: 0.8,
              color: ColorManager.primary,
              backgroundColor: ColorManager.primary.withOpacity(0.3),
            ),
             SizedBox(height: HeightSized.h1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "\$25,650/",
                      style: TextStyle(fontWeight: FontWeightManager.bold),
                    ),
                    Text(
                      "70,000",
                      style: TextStyle(color: ColorManager.grey),
                    ),
                  ],
                ),
                const Text(
                  "82%",
                  style: TextStyle(fontWeight: FontWeightManager.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
