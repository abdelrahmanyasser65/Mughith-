import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/data/models/notifactino_model.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';
class NotifactionScreen extends StatelessWidget {
  const NotifactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.secondPrimary,

        body:
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
            left: WidthSized.w8,
            right: WidthSized.w8,
            top: HeightSized.h8
        ),
              child: Row(
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
                    text: "notifications".tr,
                    fontS:  FontSized.s16,
                    fontW:  FontWeightManager.semiBold,)
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics:const BouncingScrollPhysics(),
                padding: EdgeInsets.only(
                  bottom: HeightSized.h4
                ),
                separatorBuilder: (context,index){
                  return Container(
                    color: ColorManager.grey.withOpacity(0.3),
                    width: double.infinity,
                    height: 0.2.h,
                    margin: EdgeInsets.symmetric(
                      vertical: HeightSized.h2
                    ),
                  );
                },
                itemCount: notifactionModel.length,
                itemBuilder: (context,index){
                  return   Padding(
                    padding:  EdgeInsets.symmetric(
                        vertical: WidthSized.w4,
                        horizontal: WidthSized.w4,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: WidthSized.w4
                          ),
                          height: HeightSized.h6,
                          width: WidthSized.w20,
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(notifactionModel[index].image,),
                                fit: BoxFit.fitHeight
                              )),
                        ),
                        SizedBox(
                          width: 60.w,
                          height: HeightSized.h8,
                          child: DefaultText(text: notifactionModel[index].
                          string,
                              color: ColorManager.textColor2,
                              textAlign: TextAlign.left,
                              fontSize: FontSized.s12,
                              fontWeight: FontWeightManager.semiBold),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
