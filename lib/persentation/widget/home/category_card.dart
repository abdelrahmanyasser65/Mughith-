import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:sizer/sizer.dart';

import '../../resources/color_manager.dart';

class CardCategory extends StatelessWidget {
  bool isBlack;
  Icon icon;
  String text;
  CardCategory({
    required this.isBlack,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightSized.h16,
      width: HeightSized.h12 - 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: ColorManager.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor:
                isBlack ? ColorManager.black : ColorManager.primary,
            radius: 25.sp,
            child: icon,
          ),
          SizedBox(height: HeightSized.h2),
          Text(text),
        ],
      ),
    );
  }
}
