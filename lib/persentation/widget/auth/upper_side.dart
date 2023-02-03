import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/default_text.dart';
class UpperSide extends StatelessWidget {
  const UpperSide({Key? key, required this.text, required this.text2, required this.onTap}) : super(key: key);
final String text;
final String text2;
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: HeightSized.h6,
          horizontal: WidthSized.w8
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon:const Icon(Icons.close),
            color: ColorManager.iconColor,)
          ,
          const Spacer(),
          InkWell(
            onTap: onTap,
            child: DefaultText(
              text: text,
              color: ColorManager.textColor2,
              fontSize:FontSized.s12,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          DefaultText(
            text: text2,
            color: ColorManager.primary,
            fontSize:FontSized.s14,
            fontWeight: FontWeightManager.semiBold,
          ),
        ],
      ),
    );
  }
}
