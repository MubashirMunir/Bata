import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductPageControler extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController imageUrl = TextEditingController();
  TextEditingController tc = TextEditingController();

  final _firestore = FirebaseFirestore.instance.collection('products');
   String category ="Bota";
   String brand ='Shove';
   String offer ='No';
  String id = DateTime.now().millisecond.toString();
  @override
  void onInit() {
    // CollectionReference cf=_firestore.collection('products');
    super.onInit();
  }

  void addProduct() {
    _firestore.doc(id).set({
      'name': tc.text,
      'price': price.text,
      'image': imageUrl.text,
      'desc': desc.text
    }).then((value) => {print('ok')});
  }
}
