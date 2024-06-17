import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

   final firestore =FirebaseFirestore.instance.collection('products').snapshots();
   final  firebasefirestore =FirebaseFirestore.instance.collection('products');

   @override
  void onInit() {

    super.onInit();
  }

  Future<void> deleteData(id) async{
     try {
       Get.snackbar('Deleted', 'product was deleted',backgroundColor: Colors.red);
       await FirebaseFirestore.instance.collection('products').doc(id).delete();
       update();
     }catch(e){Get.snackbar('Error', e.toString());
     update();}
   }
}