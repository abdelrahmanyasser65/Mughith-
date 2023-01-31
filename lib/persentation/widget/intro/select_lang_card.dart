import 'package:flutter/material.dart';
import 'package:mughith/app/utils/language_options.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:sizer/sizer.dart';

import '../../resources/fonts.dart';
import '../../resources/image_manager.dart';
import '../../resources/values_manager.dart';

class SelectLangCard extends StatelessWidget {
  String text;
  bool isSelected;
  LanguageOptions lang;

  SelectLangCard({
    required this.text,
    required this.isSelected,
    required this.lang,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightSized.h8,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 2,
            color: ColorManager.black.withOpacity(0.2),
          )
        ],
        color: isSelected ? ColorManager.primary : ColorManager.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: isSelected ? ColorManager.white : ColorManager.black,
            fontWeight: isSelected
                ? FontWeightManager.semiBold
                : FontWeightManager.regular,
          ),
        ),
        trailing: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 14.sp,
          backgroundImage: AssetImage(
              lang == LanguageOptions.ar ? ImageAssets.eg : ImageAssets.uk),
        ),
      ),
    );
  }
}
