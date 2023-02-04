import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/image_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/alms/alms_screen.dart';
import 'package:mughith/persentation/screens/category_screen.dart';
import 'package:mughith/persentation/screens/details/details_screen.dart';
import 'package:mughith/persentation/screens/home/new_state_screen.dart';
import 'package:mughith/persentation/screens/home/notifaction_screen.dart';
import 'package:mughith/persentation/screens/one_time_donate_screen.dart';
import 'package:mughith/persentation/screens/profile_screen.dart';
import 'package:mughith/persentation/screens/zakah/zakah.dart';
import 'package:mughith/persentation/widget/home/home_card.dart';
import 'package:mughith/persentation/widget/navigator.dart';
import 'package:sizer/sizer.dart';

import '../../../app/controllers/home_controller.dart';
import '../../widget/custom_dialog.dart';
import '../../widget/home/category_card.dart';
import '../../widget/home/search_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(NewStateScreen());
        },
        backgroundColor: ColorManager.primary,
        child: Icon(
          Icons.add,
          color: ColorManager.white,
        ),
      ),
      drawer: Drawer(
          backgroundColor: ColorManager.secondPrimary,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: HeightSized.h6),
                  height: HeightSized.h33,
                  color: ColorManager.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: HeightSized.h1),
                        height: HeightSized.h12,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(ImageAssets.man),
                            )),
                      ),
                      Text(
                        'Mostafa Samir',
                        style: TextStyle(
                          fontSize: FontSized.s18,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.white,
                        ),
                      ),
                      Text(
                        'mostafasamir@gmail.com',
                        style: TextStyle(
                            color: ColorManager.white,
                            fontWeight: FontWeightManager.medium),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: HeightSized.h1),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Get.to(ProfileScreen());
                        } else if (index == 2) {
                          CustomDialog.showLocaleDialog();
                        } else if (index == 1) {
                          Get.to(const NotifactionScreen());
                        } else if (index == 3) {
                          CustomDialog.showLogoutDialog();
                        }
                      },
                      child: ListTile(
                        leading: Icon(controller.drawerIcons[index]),
                        title: Text(controller.drawerString[index].tr),
                      ),
                    ),
                    itemCount: controller.drawerString.length,
                  ),
                ),
              ],
            ),
          )),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManager.black,
        ),
        title: Text(
          "Hello Good People".tr,
          style: TextStyle(
            color: ColorManager.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: HeightSized.h2),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                ),
                onPressed: () {
                  Get.to(const NotifactionScreen());
                },
                color: ColorManager.black,
              ),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: ColorManager.secondPrimary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: HeightSized.h2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: HeightSized.h2),
              child: const SearchBar(),
            ),
            SizedBox(height: HeightSized.h4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Get.to(OneTimeDonateScreen());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: HeightSized.h16,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help a person by one click".tr,
                        style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontSized.s16,
                          fontWeight: FontWeightManager.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 70.w,
                            child: Text(
                                "He donated five pounds to help someone with one click"
                                    .tr),
                          ),
                          Image.asset(
                            "assets/icons/donate.jpeg",
                            fit: BoxFit.cover,
                            width: 60,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: HeightSized.h4),
            Container(
              color: ColorManager.white,
              width: double.infinity,
              height: HeightSized.h18,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const CategoryScreen());
                    },
                    child: CardCategory(
                      isBlack: true,
                      icon: Icon(
                        Icons.create,
                        color: ColorManager.white,
                      ),
                      text: "Study".tr,
                    ),
                  ),
                  SizedBox(width: HeightSized.h2h),
                  InkWell(
                    onTap: () {
                      Navigators.navigateTo(context, const ZakatScreen());
                    },
                    child: CardCategory(
                      isBlack: false,
                      icon: Icon(
                        FlutterIslamicIcons.zakat,
                        color: ColorManager.black,
                      ),
                      text: "zakat".tr,
                    ),
                  ),
                  SizedBox(width: HeightSized.h2h),
                  InkWell(
                    onTap: () {
                      Get.to(const CategoryScreen());
                    },
                    child: CardCategory(
                      isBlack: true,
                      icon: Icon(
                        Icons.sentiment_satisfied,
                        color: ColorManager.white,
                      ),
                      text: "Human".tr,
                    ),
                  ),
                  SizedBox(width: HeightSized.h2h),
                  InkWell(
                    onTap: () {
                      Get.to(const AlmsScreen());
                    },
                    child: CardCategory(
                      isBlack: false,
                      icon: Icon(
                        FlutterIslamicIcons.lantern,
                        color: ColorManager.black,
                      ),
                      text: "Alms".tr,
                    ),
                  ),
                  SizedBox(width: HeightSized.h2h),
                  InkWell(
                    onTap: () {
                      Get.to(const CategoryScreen());
                    },
                    child: CardCategory(
                      isBlack: true,
                      icon: Icon(
                        Icons.abc,
                        color: ColorManager.white,
                      ),
                      text: "Other".tr,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: HeightSized.h4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: HeightSized.h2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured".tr,
                    style: TextStyle(
                      fontWeight: FontWeightManager.bold,
                      fontSize: FontSized.s14,
                    ),
                  ),
                  Text(
                    "See more".tr,
                    style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: FontSized.s12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: HeightSized.h2),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: HeightSized.h1),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const DetailsScreen());
                        },
                        child: const HomeCard(),
                      ),
                      SizedBox(height: HeightSized.h4),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
