import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/home/home.dart';
import 'package:mughith/persentation/widget/navigator.dart';

class DialogAlms extends StatelessWidget {
  const DialogAlms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding:  EdgeInsets.only(top:
              HeightSized.h4),
              child: Container(
                height: HeightSized.h30,
                width: HeightSized.h35,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: HeightSized.h6,
                    ),
                    Text(
                      "Now you have chosen an amount of 300 to be given in charity every two months automatically".tr,
                      style: TextStyle(
                          fontSize: FontSized.s12,
                          color: ColorManager.iconColor,
                          fontWeight: FontWeightManager.bold),
                    ),

                    SizedBox(
                      height: HeightSized.h2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigators.navigateTo(context, HomeScreen());
                      },
                      child: Text(
                        "GO BACK TO HOME".tr,
                        style: TextStyle(
                            fontWeight: FontWeightManager.semiBold,
                            color: ColorManager.primary,
                            fontSize: FontSized.s16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: HeightSized.h8,
              width: WidthSized.w20,
              decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.credit_card,
                color: Colors.white,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}