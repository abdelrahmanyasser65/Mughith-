import 'package:get/get.dart';
import 'package:mughith/persentation/resources/image_manager.dart';

class NotifactionModel {
  String string,image;

  NotifactionModel({required this.string,
    required this.image});
}
List <NotifactionModel>notifactionModel=[
  NotifactionModel(
      string:"no1".tr,
      image: ImageAssets.logo),
  NotifactionModel(string: "no2".tr,
      image: ImageAssets.no2),
  NotifactionModel(
      string: "no3".tr,
      image: ImageAssets.logo),
  NotifactionModel(
      string: "no1".tr,
      image: ImageAssets.logo),
  NotifactionModel(string: "no2".tr,
      image: ImageAssets.no2),
  NotifactionModel(
      string: "no3".tr,
      image: ImageAssets.logo),
];