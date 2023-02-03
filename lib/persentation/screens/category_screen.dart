import 'package:flutter/material.dart';
import 'package:mughith/persentation/widget/custom_dialog.dart';
import 'package:mughith/persentation/widget/home/home_card.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';
import '../widget/home/search_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManager.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              CustomDialog.showFilterDialog();
            },
            icon:const Icon(Icons.filter_list),
          ),
        ],
        title: Text(
          "Category",
          style: TextStyle(
            color: ColorManager.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.secondPrimary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: HeightSized.h2),
           const  Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SearchBar(),
            ),
            SizedBox(height: HeightSized.h4),
            ListView.builder(
              shrinkWrap: true,
              physics:const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return const HomeCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
