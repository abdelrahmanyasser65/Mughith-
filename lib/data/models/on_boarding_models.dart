import 'package:mughith/persentation/resources/image_manager.dart';

class BoardingModel {
  String title,description,image;

  BoardingModel({required this.title, required this.description, required this.image});
}
List<BoardingModel> boardingList = [
  BoardingModel(
    image: ImageAssets.onBoarding1,
    title: 'Start now with Mughith Program ',
    description:
    'It is possible to donate through the program to any of the presented cases and choose your payment method',
  ),
  BoardingModel(
    image: ImageAssets.onBoarding2,
    title: 'Start now with Mughith Program ',
    description:
    'It is possible to donate through the program to any of the presented cases and choose your payment method',
  ),
  BoardingModel(
    image: ImageAssets.onBoarding3,
    title: 'Start now with Mughith Program ',
    description:
    'It is possible to donate through the program to any of the presented cases and choose your payment method',
  ),
];