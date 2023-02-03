import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/app/controllers/intro.dart';
import 'package:mughith/data/models/on_boarding_models.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/auth/default_button.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final IntroController _introController = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: ColorManager.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        _introController.skipButton();
                      }, child:DefaultText(
                      text: 'SKIP'.tr,
                      fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.semiBold,
                    color: ColorManager.primary,

                  ) ) ,
                ],
              ),
              Container(
                padding:  EdgeInsets.only(
                  top: HeightSized.h2,
                  left: WidthSized.w4,
                  right: WidthSized.w4,
                ),
                height: Get.height*.75,
                width: double.infinity,
                child: PageView.builder(
                  controller: _introController.pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: boardingList.length,
                  onPageChanged: (value) {
                    _introController.changeCurrentIndex(value);
                  },
                  itemBuilder: (context, int index) {
                    return Column(
                      children: [
                        Image.asset(
                          boardingList[index].image,
                          height: 40.h,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: HeightSized.h4,
                        ),
                        DefaultText(
                          text: boardingList[index].title,
                          fontSize: FontSized.s16,
                          fontWeight: FontWeightManager.semiBold,
                          color: ColorManager.textColor2,
                          textAlign: TextAlign.center,
                        ),
                        DefaultText(
                          text: boardingList[index].description,
                          fontSize: FontSized.s12,
                          fontWeight: FontWeightManager.semiBold,
                          color: ColorManager.textColor1,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: HeightSized.h2,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SmoothPageIndicator(
                controller:_introController.pageController,
                count: boardingList.length ,
                axisDirection: Axis.horizontal,
                effect:  SlideEffect(
                    spacing:  8.0,
                    radius: 15,
                    dotWidth:  15.0,
                    dotHeight:  15.0,
                    strokeWidth:  1.5,
                    dotColor:  Colors.grey,
                    activeDotColor:  ColorManager.primary
                ),
              )
              ,
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: GetBuilder<IntroController>(
                  builder:(controller) => DefaultButton(
                    color: ColorManager.primary,
                    onPressed: ()
                    {
                      _introController.moveToLoginScreen();
                    },
                    text:_introController.currentIndex==boardingList.length-1?'Start Now'.tr:'next'.tr,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
