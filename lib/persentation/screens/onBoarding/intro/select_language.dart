import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/app/controllers/select_language.dart';
import 'package:mughith/app/utils/language_options.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/image_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/auth/default_button.dart';
import 'package:mughith/persentation/widget/intro/select_lang_card.dart';


class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  bool arSelected = true;

  final SelectLanguageController _languageController =
      Get.put(SelectLanguageController());

  setlectCard(bool value) {
    setState(() {
      arSelected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.secondPrimary,
        body: Padding(
          padding:  EdgeInsets.only(
              left:WidthSized.w8 ,
              right: WidthSized.w8,
            top: HeightSized.h12,
            bottom: HeightSized.h8

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: HeightSized.h6),
              Image.asset(
                ImageAssets.language,
                width: HeightSized.h8,
              ),
              SizedBox(height: HeightSized.h2),
              Text(
                "قم باختيار لغتك المفضلة",
                style: TextStyle(
                  fontSize: FontSized.s17,
                  fontWeight: FontWeightManager.bold,
                ),
              ),
              SizedBox(height: HeightSized.h12),
              InkWell(
                onTap: () {
                  setlectCard(true);
                },
                child: SelectLangCard(
                  text: "العربية",
                  isSelected: arSelected,
                  lang: LanguageOptions.ar,
                ),
              ),
              SizedBox(height: HeightSized.h4),
              InkWell(
                onTap: () {
                  setlectCard(false);
                },
                child: SelectLangCard(
                  text: "English",
                  isSelected: !arSelected,
                  lang: LanguageOptions.en,
                ),
              ),
              SizedBox(height: HeightSized.h12),
              DefaultButton(
                color: ColorManager.primary,
                onPressed: () {
                  _languageController.setLanguage(
                      arSelected ? LanguageOptions.ar : LanguageOptions.en);
                },
                text: "التالي",
              )
            ],
          ),
        ),
      ),
    );
  }
}
