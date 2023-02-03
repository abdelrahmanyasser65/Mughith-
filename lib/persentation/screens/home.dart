import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/screens/details/details_screen.dart';
import 'package:mughith/persentation/widget/home/home_card.dart';

import '../../app/controllers/home_controller.dart';
import '../widget/custom_dialog.dart';
import '../widget/home/category_card.dart';
import '../widget/home/search_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: ColorManager.secondPrimary,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  height: 250,
                  color: ColorManager.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/man.jpg'),
                            )),
                      ),
                      Text(
                        'Mostafa Samir',
                        style: TextStyle(
                          fontSize: FontSized.s18,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.black.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        'mostafasamir@gmail.com',
                        style: TextStyle(
                          color: ColorManager.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        // Get.to(controller.goToScreen[index]);
                        if (index == 2) {
                          CustomDialog.showLocaleDialog();
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                Icons.notifications,
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SearchBar(),
            ),
            SizedBox(height: HeightSized.h4),
            Container(
              color: ColorManager.white,
              width: double.infinity,
              height: HeightSized.h16 + 20,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CardCategory(
                      isBlack: true,
                      icon: Icon(
                        Icons.create,
                        color: ColorManager.white,
                      ),
                      text: "Study".tr,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: CardCategory(
                      isBlack: false,
                      icon: Icon(
                        Icons.local_hospital,
                        color: ColorManager.black,
                      ),
                      text: "Medic".tr,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: CardCategory(
                      isBlack: true,
                      icon: Icon(
                        Icons.sentiment_satisfied,
                        color: ColorManager.white,
                      ),
                      text: "Human".tr,
                    ),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: CardCategory(
                      isBlack: false,
                      icon: Icon(
                        Icons.abc,
                        color: ColorManager.black,
                      ),
                      text: "Other".tr,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: HeightSized.h4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                  Text("See more".tr),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
