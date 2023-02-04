import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:mughith/persentation/screens/zakah/calculate_zakah.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';

import '../resources/color_manager.dart';
import '../resources/fonts.dart';
import '../resources/values_manager.dart';

class ZakatCard extends StatelessWidget {
 final  String text;
 final IconData icon;
 final Function()onTap;
  const ZakatCard({super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
   return InkWell(
      onTap:
        onTap
      ,
      child: Container(
        margin: EdgeInsets.only(
            top: HeightSized.h3
        ),
        height: HeightSized.h12,
        padding: EdgeInsets.symmetric(
            horizontal: HeightSized.h4
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: ColorManager.primary
        ),
        child: Row(
          children: [
            Icon(icon,color: ColorManager.white,size:30,),
            SizedBox(width: HeightSized.h2,),
            SizedBox(
              width: 24.h,
              height: 10.h,

              child: DefaultText(

                  text: text,
                  color: ColorManager.white,
                  fontSize: FontSized.s16,
                  fontWeight: FontWeightManager.semiBold),
            ),
          ],
        ),
      ),
    );
  }
}
