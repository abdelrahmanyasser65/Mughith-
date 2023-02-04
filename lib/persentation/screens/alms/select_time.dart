import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/data/models/details_model.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/alms/dialog_alms.dart';
import 'package:mughith/persentation/screens/details/pay_screen.dart';
import 'package:mughith/persentation/screens/details/popup_dialog.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/auth/default_text_formfiled.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:mughith/persentation/widget/navigator.dart';
import 'package:sizer/sizer.dart';
class SelectTime extends StatefulWidget {
  const SelectTime({Key? key}) : super(key: key);

  @override
  State<SelectTime> createState() => _SelectTime();
}

class _SelectTime extends State<SelectTime> {
  int curIndex=2;
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.secondPrimary,

        body:
        Padding(
          padding:  EdgeInsets.only(
              left: WidthSized.w8,
              right: WidthSized.w8,
              top: HeightSized.h8,
              bottom: HeightSized.h4
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
                      Navigator.pop(context);
                    },
                        icon: Icon(Icons.close,
                          color: ColorManager.iconColor,)),
                  ),
                  SizedBox(width: WidthSized.w20,),
                  CenterSideText(
                    text: "Charity timing".tr,
                    fontS:  FontSized.s18,
                    fontW:  FontWeightManager.semiBold,)
                ],
              ),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                      vertical: 3.h
                  ),
                  physics:const BouncingScrollPhysics(),
                  separatorBuilder: (context,index){
                    return SizedBox(height: HeightSized.h2,);
                  },
                  itemCount: 12,

                  itemBuilder: (context,index){
                    return   DefaultButton(
                      color: curIndex==index?ColorManager.primary:
                      ColorManager.black.withOpacity(0.05),
                      onPressed: (){
                        setState((){
                          curIndex=index;
                        });
                      },
                      text: "${"every".tr} ${index+1} ${"month".tr}",
                      colorText: ColorManager.textColor2,
                    );
                  },
                ),
              ),
              SizedBox(height: HeightSized.h1,),
              DefaultButton(onPressed: (){
                showDialog(context: context,
                    builder: (context)=>const DialogAlms());

              },
                  text: "Save and confirm".tr,
                  color: ColorManager.primary)
            ],
          ),
        )


    );
  }
}
