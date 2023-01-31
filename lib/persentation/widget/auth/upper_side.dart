import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/strings_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/default_text.dart';
class UpperSide extends StatelessWidget {
  const UpperSide({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: HeightSized.h6,
          horizontal: WidthSized.w4
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon:const Icon(Icons.close),
            color: ColorManager.iconColor,)
          ,
          const Spacer(),
          DefaultText(
            text: text,
            color: ColorManager.textColor2,
            fontSize:FontSized.s12,
            fontWeight: FontWeightManager.regular,
          ),
        ],
      ),
    );
  }
}
