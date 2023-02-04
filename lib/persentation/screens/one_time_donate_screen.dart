import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/screens/details/popup_dialog.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/default_text.dart';

import '../resources/color_manager.dart';
import '../resources/fonts.dart';
import '../resources/values_manager.dart';
import '../widget/auth/center_side_text.dart';

class OneTimeDonateScreen extends StatelessWidget {
  const OneTimeDonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(
            left: WidthSized.w8,
            right: WidthSized.w8,
            top: HeightSized.h8,
            bottom: HeightSized.h2
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
                      icon: Icon(Icons.close,
                        color: ColorManager.iconColor,)),
                ),
                SizedBox(width: WidthSized.w12,),
                CenterSideText(
                  text: "One Time Donate".tr,
                  fontS:  FontSized.s18,
                  fontW:  FontWeightManager.semiBold,)
              ],
            ),
            SizedBox(height: HeightSized.h25,),
            Center(
              child: Text(
                "Help a person by one click".tr,
                style: TextStyle(
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSized.s14),
              ),
            ),
            SizedBox(height: HeightSized.h2,),
            InkWell(
              onTap: (){
                showDialog(context: context,
                    builder: (context)=>const PopUpDialog());

              },
              child: Container(
                height: HeightSized.h16,
                width: HeightSized.h16,
                decoration: BoxDecoration(
                  color: ColorManager.primary,
                 shape: BoxShape.circle
                ),
                child: Center(
                  child:DefaultText(
                    text: "Donation".tr,
                    color: ColorManager.white,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),

              ),
            )

          ],
        ),
      ),
    );
  }
}
