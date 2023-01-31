import 'package:flutter/material.dart';
class DefaultText extends StatelessWidget {
  const DefaultText({Key? key, required this.text, required this.color, required this.fontSize, required this.fontWeight}) : super(key: key);
final String text;
final Color color;
final double fontSize;
final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
          fontSize: fontSize,
        color: color,
      ),
    );
  }
}
