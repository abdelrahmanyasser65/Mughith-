import "package:flutter/material.dart";
import 'package:get/get_utils/get_utils.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:sizer/sizer.dart';

class AlmsInfoScreen extends StatelessWidget {
  const AlmsInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(
                left: WidthSized.w8,
                right: WidthSized.w8,
                top: HeightSized.h8,
                bottom: HeightSized.h2
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(width: WidthSized.w16,),
                    CenterSideText(
                      text: "Information".tr,
                      fontS:  FontSized.s18,
                      fontW:  FontWeightManager.semiBold,)
                  ],
                ),
                SizedBox(height: 5.h,),
                Center(
                  child: Text(
                    "al1".tr,
                    style: TextStyle(
                      fontWeight: FontWeightManager.bold,
                      fontSize: FontSized.s16,
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                SizedBox(height: HeightSized.h3),
                Text(
                  "al2".tr,
                  style: TextStyle(
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSized.s14,
                    // color: ColorManager.primary,
                  ),
                ),
                SizedBox(height: HeightSized.h1),
                Text(
                    "al3".tr
                ),
                SizedBox(height: HeightSized.h3),
                Text(
                  "al4".tr,
                  style: TextStyle(
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSized.s14,
                    // color: ColorManager.primary,
                  ),
                ),
                SizedBox(height: HeightSized.h1),
                Text(
                    "al5".tr
                ),
                SizedBox(height: HeightSized.h3),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
