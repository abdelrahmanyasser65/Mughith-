import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/screens/zakah/calculate_zakah.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:mughith/persentation/widget/home/category_card.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';
import '../../widget/zakah_card.dart';
import '../details/pay_screen.dart';
import 'zakah_info.dart';

class ZakatScreen extends StatefulWidget {
  const ZakatScreen({super.key});

  @override
  State<ZakatScreen> createState() => _ZakatScreenState();
}

class _ZakatScreenState extends State<ZakatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:  EdgeInsets.only(
            left: WidthSized.w8,
            right: WidthSized.w8,
            top: HeightSized.h8
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
                SizedBox(width: WidthSized.w20,),
                CenterSideText(
                  text: "zakat".tr,
                  fontS:  FontSized.s18,
                  fontW:  FontWeightManager.semiBold,)
              ],
            ),
            SizedBox(
              height: HeightSized.h6,
            ),
            ZakatCard(
                text: "calZakat".tr, icon: Icons.calculate_outlined, onTap: (){
              Get.to(CalculateZakah());
            }),
            ZakatCard(
                text: "infZakat".tr, icon: Icons.info_outline, onTap: (){
              Get.to(const ZakahInfoScreen());
            })

          ],
        ),
      ),
    );
  }
}
