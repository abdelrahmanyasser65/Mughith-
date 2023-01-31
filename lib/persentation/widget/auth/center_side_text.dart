import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/strings_manager.dart';
import 'package:mughith/persentation/widget/default_text.dart';
class CenterSideText extends StatelessWidget {
  const CenterSideText({Key? key, required this.text, required this.fontS, required this.fontW}) : super(key: key);
final String text;
final double fontS;
final FontWeight fontW;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultText(
        text: text,
        color: ColorManager.textColor2,
        fontSize: fontS,
        fontWeight: fontW,
      ),
    );
  }
}
