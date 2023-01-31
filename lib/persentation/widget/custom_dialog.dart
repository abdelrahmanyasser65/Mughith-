import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/controllers/profile.dart';

class CustomDialog {
  static final ProfileController _profileController =
      Get.put(ProfileController());

  static Future<dynamic> showLocaleDialog() {
    return Get.defaultDialog(
      barrierDismissible: false,
      titlePadding: const EdgeInsets.only(top: 20),
      title: "Choose your language".tr,
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                _profileController.changeLanguage('ar');
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 19,
                      backgroundImage: AssetImage('assets/icons/egypt.png'),
                    ),
                    SizedBox(width: 7),
                    Text("العربية",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                _profileController.changeLanguage('en');
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 19,
                      backgroundImage: AssetImage('assets/icons/uk.png'),
                    ),
                    SizedBox(width: 7),
                    Text("English",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // static Future<dynamic> showThemeDialog(BuildContext context) {
  //   return Get.defaultDialog(
  //     barrierDismissible: false,
  //     titlePadding: const EdgeInsets.only(top: 20),
  //     title: "Choose your Theme".tr,
  //     titleStyle: const TextStyle(fontWeight: FontWeight.bold),
  //     content: Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 20),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           InkWell(
  //             onTap: () {
  //               _profileController.changeTheme(context, false);
  //             },
  //             child: Container(
  //               padding: const EdgeInsets.all(5),
  //               child: Row(
  //                 children: [
  //                   const Icon(
  //                     Icons.dark_mode,
  //                     size: 30,
  //                   ),
  //                   const SizedBox(width: 7),
  //                   Text("Dark".tr,
  //                       style: const TextStyle(fontWeight: FontWeight.bold)),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           const SizedBox(width: 15),
  //           InkWell(
  //             onTap: () {
  //               _profileController.changeTheme(context, true);
  //             },
  //             child: Container(
  //               padding: const EdgeInsets.all(5),
  //               child: Row(
  //                 children: [
  //                   const Icon(
  //                     Icons.light_mode,
  //                     size: 30,
  //                   ),
  //                   const SizedBox(width: 7),
  //                   Text("Light".tr,
  //                       style: const TextStyle(fontWeight: FontWeight.bold)),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // static Future<dynamic> showLogoutDialog() {
  //   return Get.defaultDialog(
  //     barrierDismissible: false,
  //     titlePadding: const EdgeInsets.only(top: 20),
  //     title: "Are You Sure ?".tr,
  //     titleStyle: const TextStyle(fontWeight: FontWeight.bold),
  //     content: Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 20),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           InkWell(
  //             onTap: () {},
  //             child: Container(
  //               padding:
  //                   const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
  //               decoration: BoxDecoration(
  //                 color: Colors.green[400],
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //               child: Text("Yes".tr,
  //                   style: const TextStyle(
  //                       fontWeight: FontWeight.bold, color: Colors.white)),
  //             ),
  //           ),
  //           const SizedBox(width: 15),
  //           InkWell(
  //             onTap: () {
  //               Get.back();
  //             },
  //             child: Container(
  //               padding:
  //                   const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
  //               decoration: BoxDecoration(
  //                 color: Colors.red[700],
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //               child: Text(
  //                 "No".tr,
  //                 style: const TextStyle(
  //                     fontWeight: FontWeight.bold, color: Colors.white),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
