import 'package:flutter/material.dart';
class DefaultText extends StatelessWidget {
  const DefaultText({Key? key, required this.text,
    required this.color, required this.fontSize,
    required this.fontWeight,  this.textAlign}) : super(key: key);
final String text;
final Color color;
final double fontSize;
final TextAlign ?textAlign;
final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
          fontSize: fontSize,
        overflow: TextOverflow.visible,
        color: color,
      ),
    );
  }
}
