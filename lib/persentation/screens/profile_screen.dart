import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/image_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                           Image(
                            image:const AssetImage(ImageAssets.man),
                            height: HeightSized.h33,
                            width: HeightSized.h33,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: 11.h,
                            width: 7.h,
                            // decoration: BoxDecoration(
                            //   color: ColorManager.black.withOpacity(0.04),
                            //   shape: BoxShape.circle
                            // ),
                            margin:  EdgeInsets.symmetric(
                              vertical: HeightSized.h4,
                              horizontal: HeightSized.h2
                            ),
                            child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Icon(
                                  Icons.arrow_back_outlined,
                                  size: 30,
                                )),
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 170,
                            width: 110,
                            color: Colors.yellow,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20, top: 47),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Stephen Mack",
                                  style: TextStyle(
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '2,292',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      'posts',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 95,
                      ),
                      const RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "BLUES SINGER",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.add,
                            size: 32,
                          )),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
    );
  }
}