import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/data/models/details_model.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/auth/center_side_text.dart';
class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key? key}) : super(key: key);

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
               SizedBox(width: WidthSized.w20,),
               CenterSideText(
                 text: "More Image".tr,
                 fontS:  FontSized.s18,
                 fontW:  FontWeightManager.semiBold,)
             ],
           ),
           Expanded(
             child: ListView.separated(

               separatorBuilder: (context,index){
                 return SizedBox(height: HeightSized.h4,);
               },
               itemCount: detailsImages.length,
               itemBuilder: (context,index){
                 return   ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child: Image.asset(detailsImages[index]),
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
