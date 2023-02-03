import 'package:get/get.dart';
import 'package:mughith/persentation/resources/image_manager.dart';

class BoardingModel {
  String title,description,image;

  BoardingModel({required this.title, required this.description, required this.image});
}
List<BoardingModel> boardingList = [
  BoardingModel(
    image: ImageAssets.onBoarding1,
    title: 'Start now with Mughith Program'.tr,
    description:
    'It is possible to donate through the program to any of the presented cases and choose your payment method.'.tr,
  ),
  BoardingModel(
    image: ImageAssets.onBoarding2,
    title: 'Mange your Donation'.tr,
    description:
    'You can choose who get the money or you let us mange it.'.tr,
  ),
  BoardingModel(
    image: ImageAssets.onBoarding3,
    title: 'Monthly Payment'.tr,
    description:
    'Through the application, you can pay a constant money per month automatically.'.tr,
  ),
];