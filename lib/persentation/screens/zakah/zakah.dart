import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/screens/zakah/calculate_zakah.dart';
import 'package:mughith/persentation/widget/home/category_card.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';
import '../../widget/zakah_card.dart';
import '../details/pay_screen.dart';
import 'zakah_info.dart';

class ZakahScreen extends StatefulWidget {
  const ZakahScreen({super.key});

  @override
  State<ZakahScreen> createState() => _ZakahScreenState();
}

class _ZakahScreenState extends State<ZakahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManager.black,
        ),
        title: Text(
          "الزكاة",
          style: TextStyle(
            color: ColorManager.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.secondPrimary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(CalculateZakah());
                  },
                  child: ZakahCard(
                    text: 'Zakat calculation'.tr,
                    icon: Icon(
                      Icons.calculate,
                      size: 30,
                      color: ColorManager.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(ZakahInfoScreen());
                  },
                  child: ZakahCard(
                    text:  "Information about zakat".tr,
                    icon: Icon(
                      Icons.info_outline,
                      size: 30,
                      color: ColorManager.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: HeightSized.h8),
          ],
        ),
      ),
    );
  }
}
