import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/screens/alms/alms_info.dart';
import 'package:mughith/persentation/screens/alms/select_amount.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';
import '../../widget/zakah_card.dart';


class AlmsScreen extends StatefulWidget {
  const AlmsScreen({super.key});

  @override
  State<AlmsScreen> createState() => _AlmsScreenState();
}

class _AlmsScreenState extends State<AlmsScreen> {
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
                  text: "Alms".tr,
                  fontS:  FontSized.s18,
                  fontW:  FontWeightManager.semiBold,)
              ],
            ),
            SizedBox(
              height: HeightSized.h6,
            ),
            ZakatCard(
                text: "select amount now and time for handouts".tr, icon: Icons.calculate_outlined, onTap: (){
                  Get.to(const SelectAmount());
            }),
            ZakatCard(
                text: "al1".tr, icon: Icons.info_outline, onTap: (){
                  Get.to(const AlmsInfoScreen());
            })

          ],
        ),
      ),
    );
  }
}
