import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/widget/default_text.dart';
class BuildColumn extends StatelessWidget {
  const BuildColumn({Key? key, required this.title, required this.subTitle}) : super(key: key);
 final String title;
 final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DefaultText(text: title,
            color: ColorManager.textColor2,
            fontSize: FontSized.s20,
            fontWeight: FontWeightManager.bold),
        DefaultText(text: subTitle,
            color: ColorManager.textColor1,
            fontSize: FontSized.s14,
            fontWeight: FontWeightManager.medium)
      ],
    );
  }
}
