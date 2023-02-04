import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:mughith/data/models/details_model.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/details/donation_amount_screen.dart';
import 'package:mughith/persentation/screens/details/images_screen.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:mughith/persentation/widget/navigator.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondPrimary,
      body:Padding(
      padding:  EdgeInsets.only(
            left: WidthSized.w8,
            right: WidthSized.w8,
            top: HeightSized.h8
        ),
        child: Column(
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
                    Get.back();
                  },
                      icon: Icon(Icons.arrow_back_outlined,
                        color: ColorManager.iconColor,)),
                ),
                SizedBox(width: WidthSized.w20,),
                CenterSideText(
                    text: "Details".tr,
                    fontS:  FontSized.s18,
                    fontW:  FontWeightManager.semiBold,)
              ],
            ),
            SizedBox(height: HeightSized.h4,),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(detailsImages[0]),
                ),
                Container(
                 margin: EdgeInsets.only(
                   bottom: HeightSized.h2,
                   right: WidthSized.w4
                 ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.black.withOpacity(0.5)
                  ),
                  child: IconButton(onPressed: (){
                    Navigators.navigateTo(context,const ImagesScreen());
                  },
                      icon: Icon(Icons.add_photo_alternate_outlined,
                        color: ColorManager.white,)),
                ),
              ],
            ),
             SizedBox(height: HeightSized.h1),
            Text(
              "Help Them Smile Again".tr,
              style: TextStyle(
                fontSize: FontSized.s14,
              ),
            ),
             SizedBox(height: HeightSized.h1),
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
             SizedBox(height: HeightSized.h1),
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
                 Text(
                  "82%",
                  style: TextStyle(
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.bold,
                  color: ColorManager.primary),
                )
              ],
            ),
            SizedBox(height: HeightSized.h2),
            SizedBox(
              height:HeightSized.h20 ,
              child: SingleChildScrollView(
                child: DefaultText(
                    text: "desDetails".tr,  color: ColorManager.textColor2,
                    fontSize: FontSized.s12,
                    fontWeight: FontWeightManager.regular,),
              ),
            ),
            SizedBox(height: HeightSized.h3,),
            DefaultButton(onPressed: (){
              Navigators.navigateTo(context,const DonationAmountScreen());
            },
                text: "Donate Now".tr,
              color: ColorManager.primary,)
          ],
        ),
      ),
    );
  }
}
