import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/fonts.dart';
import '../resources/values_manager.dart';

class ZakahCard extends StatelessWidget {
  String text;
  Icon icon;
  ZakahCard({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightSized.h18,
      width: HeightSized.h16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManager.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: HeightSized.h2),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorManager.black,
              fontSize: FontSized.s14,
            ),
          )
        ],
      ),
    );
  }
}
