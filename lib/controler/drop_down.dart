



import 'package:get/get.dart';

class DropDownController extends GetxController{

  String dropdownvalue ='Service';
  void onChange(String newVal){
    dropdownvalue =newVal;
    update();
  }
}