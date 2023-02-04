import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../data/models/state_model.dart';

class NewStateController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController imageNationalController = TextEditingController();
  TextEditingController imagesController = TextEditingController();
  TextEditingController targetController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  chooseDate(context) {
    showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      initialDate: DateTime.now(),
      lastDate: DateTime(2030),
    ).then((value) =>
        dateController.text = DateFormat('yyyy-MM-dd').format(value!));
  }

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  pickImage() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
  }

  confirmNewState() {
    StateModel model = StateModel(
        nameController.text,
        0,
        int.parse(targetController.text),
        [
          'https://d1vdjc70h9nzd9.cloudfront.net/media/campaign/175000/175558/image/5e7c50b26920e.jpeg',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2VaKYgeYozFW5HdKGLuMQUy7JeevMWSaQ7xs-Wio_M6FAm1vHAYuyQKNDhWhqI2UNl3g&usqp=CAU',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOLzxTk6LvrgQXo-WoBLev4H8ck1XkVppJXKsuWlevVmC2Sqg_vTo1RS1z-pd2U1FWIFo&usqp=CAU'
        ],
        descriptionController.text,
        0,
        DateTime.now().toString(),
        dateController.text,
        auth.currentUser!.uid,
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Carte_identit%C3%A9_%C3%A9lectronique_fran%C3%A7aise_%282021%2C_recto%29.png/640px-Carte_identit%C3%A9_%C3%A9lectronique_fran%C3%A7aise_%282021%2C_recto%29.png');
    firestore
        .collection('states')
        .doc(auth.currentUser!.uid)
        .set(model.toMap());
  }
}
