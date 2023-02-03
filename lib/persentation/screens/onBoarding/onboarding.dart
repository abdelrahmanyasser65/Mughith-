import 'package:flutter/material.dart';
import 'package:mughith/data/models/on_boarding_models.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/auth/login_screen.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:mughith/persentation/widget/navigator.dart';
import 'package:sizer/sizer.dart';
class OnBoardingScreen extends StatelessWidget {
    OnBoardingScreen({Key? key}) : super(key: key);

final PageController controller=PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics:const BouncingScrollPhysics(),
        controller: controller,
        itemCount: boardingList.length,
        onPageChanged: (val){

        },
        itemBuilder: (context,int index){
        return  Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorManager.white,
          padding: EdgeInsets.only(
            top: HeightSized.h16,
            left: WidthSized.w4,
            right: WidthSized.w4,
          ),
          child: Column(
              children: [
                Image.asset(boardingList[index].image,
                  height: 40.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: HeightSized.h4,),
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
                  height: HeightSized.h12,
                ),
                DefaultButton(
                  color: ColorManager.primary,
                  onPressed: () {
                    Navigators.navigateAndFinish(context,
                        LoginScreen());
                  },
                  text: 'Start Now ',

                ),
              ],
            ),
        );
        },
      ),
    );
  }
}
