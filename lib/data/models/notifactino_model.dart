import 'package:mughith/persentation/resources/image_manager.dart';

class NotifactionModel {
  String string,image;

  NotifactionModel({required this.string,
    required this.image});
}
List <NotifactionModel>notifactionModel=[
  NotifactionModel(
      string: 'You have successfully donated, you have donated to case number 7594573',
      image: ImageAssets.logo),
  NotifactionModel(string: 'A new case has now been added to which you can donate and find out the details',
      image: ImageAssets.no2),
  NotifactionModel(
      string: 'Ahmed Yasser and Khaled Hussein also donated in case number 7594573',
      image: ImageAssets.logo),
  NotifactionModel(
      string: 'You have successfully donated, you have donated to case number 7594573',
      image: ImageAssets.logo),
  NotifactionModel(string: 'A new case has now been added to which you can donate and find out the details',
      image: ImageAssets.no2),
  NotifactionModel(
      string: 'Ahmed Yasser and Khaled Hussein also donated in case number 7594573',
      image: ImageAssets.logo),
];