import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../persentation/screens/intro/select_language.dart';
import 'localization/languages.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: Languages(),
        locale: const Locale('ar', 'EG'),
        theme: ThemeData(fontFamily: "Cairo"),
        home: const SelectLanguageScreen(),
      );
    });
  }
}
