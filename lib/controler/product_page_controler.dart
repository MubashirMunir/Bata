

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:practice/module/product/product_module.dart';

class ProductPageControler extends GetxController{
  final firebase =FirebaseFirestore.instance.collection("products");

 TextEditingController tc =TextEditingController();

 final firestore =FirebaseFirestore.instance;

  late CollectionReference productCollection;


  String id=DateTime.now().millisecond.toString();
  @override
  void onInit() {
    CollectionReference cf=firestore.collection('products');
    super.onInit();
  }

  addProduct(){
   DocumentReference dr=productCollection.doc();
  FirebaseFirestore.instance.collection('users').add({'name':'Clark',
  'brand':'Loofit',
    'price':3400

  });
      update();
      print("eroorr");
  }
}