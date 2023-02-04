import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/data/models/details_model.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/details/popup_dialog.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.secondPrimary,

        body:
        Padding(
          padding:  EdgeInsets.only(
              left: WidthSized.w8,
              right: WidthSized.w8,
              top: HeightSized.h8
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
                        icon: Icon(Icons.arrow_back_outlined,
                          color: ColorManager.iconColor,)),
                  ),
                  SizedBox(width: WidthSized.w4,),
                  CenterSideText(
                    text: "Choose the payment method".tr,
                    fontS:  FontSized.s16,
                    fontW:  FontWeightManager.semiBold,)
                ],
              ),
              Expanded(
                child: ListView.separated(

                  separatorBuilder: (context,index){
                    return SizedBox(height: HeightSized.h4,);
                  },
                  itemCount: payment.length,
                  itemBuilder: (context,index){
                    return   InkWell(
                      onTap: (){
                      showDialog(context: context,
                          builder: (context)=>const PopUpDialog());
                      },
                      child: Image.asset(
                        payment[index],
                        height: HeightSized.h20,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )


    );
  }
}
