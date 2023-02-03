import 'package:get/get.dart';

class CategoryController extends GetxController {
  bool importanceValue = false;
  bool endDateValue = false;
  bool amounteValue = false;
  // bool importanceValue = false;

  setimportanceValue(bool value) {
    importanceValue = value;
    update();
  }

  setamounteValue(bool value) {
    amounteValue = value;
    update();
  }

  setendDateValue(bool value) {
    endDateValue = value;
    update();
  }
}
