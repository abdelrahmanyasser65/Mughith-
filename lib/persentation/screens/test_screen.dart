import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/screens/auth/login_screen.dart';
import 'package:mughith/persentation/widget/navigator.dart';
import 'package:sizer/sizer.dart';

import '../widget/custom_dialog.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: InkWell(
            onTap: (){
              Navigators.navigateTo(context, LoginScreen());
            },
            child: Text(
              "  Welcome Back 👋".tr,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            CustomDialog.showLocaleDialog();
          },
        ),
      ),
    );
  }
}
