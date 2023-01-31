import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/fonts.dart';
import 'package:mughith/persentation/resources/values_manager.dart';
import 'package:mughith/persentation/widget/home/home_card.dart';

import '../widget/home/category_card.dart';
import '../widget/home/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: ColorManager.secondPrimary,
      ),
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
              itemBuilder: (contex, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const HomeCard(),
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
