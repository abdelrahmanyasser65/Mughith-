import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/image_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: HeightSized.h40,
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
            const SizedBox(height: 10),
            Text(
              "Help Them Smile Again".tr,
              style: TextStyle(
                fontSize: FontSized.s14,
              ),
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: 0.8,
              color: ColorManager.primary,
              backgroundColor: ColorManager.primary.withOpacity(0.3),
            ),
            const SizedBox(height: 10),
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
