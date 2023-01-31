import 'package:flutter/material.dart';

class Navigators{

  static void navigateTo(context,widget)=>
      Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));
  static void navigateAndFinish(context,widget)=>
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>widget));
}