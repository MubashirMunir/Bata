import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPageControler extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController imageUrl = TextEditingController();
  // TextEditingController tc = TextEditingController();
  final _firestore = FirebaseFirestore.instance.collection('products');
   String category ="Bota";
   String brand ='Shove';
   String offer ='No';
   String id = DateTime.now().millisecondsSinceEpoch.toString();
  @override
  void onInit() {
     // CollectionReference cf=_firestore.collection('products');
    super.onInit();
  }
  void addProduct() {
    try{
      _firestore.add({
        'name': name.text,
        'price': price.text,
        'image': imageUrl.text,
        'desc': desc.text,
        'offer': offer.toString(),
        'category':category.toString(),
        'brand':brand.toString(),
      });
      Get.snackbar('Successfull', 'Product Added',backgroundColor: Colors.green);

    }

    catch(e){
    Get.snackbar('Error', e.toString(),backgroundColor: Colors.red);
    }

  }
 void clear(){
    name.clear();
        price.clear();
    desc.clear();
    imageUrl.clear();
    update();
  }
// name.text='';
// price.text='';
// imageUrl.text='';
// desc.text='';
// offer.toString() ;
// category.toString();
// brand.toString();



}
