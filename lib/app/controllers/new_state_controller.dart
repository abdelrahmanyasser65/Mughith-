import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class NewStateController extends GetxController
{
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController targetController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  final ImagePicker picker = ImagePicker();

  chooseDate(context)
  {
    showDatePicker(context: context, firstDate: DateTime.now(), initialDate: DateTime.now(), lastDate: DateTime(2030),
    ).then((value) => dateController.text=DateFormat('yyyy-MM-dd').format(value!));
  }


  pickImage()async
  {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

  }
}