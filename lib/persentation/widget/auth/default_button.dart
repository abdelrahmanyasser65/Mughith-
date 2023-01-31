import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/default_text.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HeightSized.h2),
        ),
      ),
      child: SizedBox(
        height: HeightSized.h6,
        width: double.infinity,
        child: Center(
          child: DefaultText(
            text: text,
            color: ColorManager.white,
            fontWeight: FontWeightManager.medium,
            fontSize: FontSized.s16,
          ),
        ),
      ),
    );
  }
}
