import 'package:flutter/material.dart';
import 'package:mughith/data/models/details_model.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/auth/default_text_formfiled.dart';
import 'package:mughith/persentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';
class DonationAmountScreen extends StatefulWidget {
  const DonationAmountScreen({Key? key}) : super(key: key);

  @override
  State<DonationAmountScreen> createState() => _DonationAmountScreenState();
}

class _DonationAmountScreenState extends State<DonationAmountScreen> {
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
            bottom: HeightSized.h2
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
                    text: "Donation Amount",
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
                  itemCount: amountList.length,

                  itemBuilder: (context,index){
                    return   DefaultButton(
                      color: curIndex==index?ColorManager.primary:
                      ColorManager.black.withOpacity(0.05),
                        onPressed: (){
                          setState((){
                            curIndex=index;
                    });
                        },
                        text: "\$ ${amountList[index]}",
                      colorText: ColorManager.textColor2,
                    );
                  },
                ),
              ),
              SizedBox(height: HeightSized.h1,),
              DefaultText(text: "Other Amount",
                  color: ColorManager.textColor2,
                  fontSize: FontSized.s14,
                  fontWeight: FontWeightManager.semiBold),
              DefaultTextFormFiled(
                  controller: controller,
                  textInputType: TextInputType.number,
                  obscureText: false,
                  prefixIcon:Icons.attach_money_outlined,
                hint: "Enter your donation amount",
              ),
              SizedBox(height: HeightSized.h4,),
              DefaultButton(onPressed: (){},
                  text: "Select Payment Method",
                  color: ColorManager.primary)
            ],
          ),
        )


    );
  }
}
