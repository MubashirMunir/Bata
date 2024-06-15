import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'controler/product_page_controler.dart';
import 'widgets/dropdown_button.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPageControler>(builder: (ctrl) {
      List<String> items =[];
      return Scaffold(
        appBar: AppBar(
          title: const Text('Add Product'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Add New Product",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: ctrl.name,
                decoration: const InputDecoration(
                    label: Text("product name"),
                    border: OutlineInputBorder(),
                    hintText: "Enter Product Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: ctrl.desc,
                maxLines: 4,
                decoration: const InputDecoration(
                    label: Text("product Description"),
                    border: OutlineInputBorder(),
                    hintText: "Enter Product Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: ctrl.imageUrl,
                decoration: const InputDecoration(
                    label: Text("product Image"),
                    border: OutlineInputBorder(),
                    hintText: "Image Url"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: ctrl.price,
                decoration: const InputDecoration(
                    label: Text("product Price"),
                    border: OutlineInputBorder(),
                    hintText: "Price"),
              ),
              Row(
                children: [
                  Flexible(
                      child: DropDown(
                    // value: 'cat1',
                    // text: "Brand",
                    // list:  ['Service','Calza','Clara','Cheetah','J.'],
                  )
        ),
                  Flexible(
                      child: DropDown(
                    //     list: ['Service','Calza','Clara','Cheetah','J.'],
                    // value: 'brand1',
                    // text: 'brand1',
                    // list: const ['brand1', 'brand2', 'brand3'],
                  )
                     )],
              ),
              const Text(
                "Offer Product ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),

              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        ctrl.addProduct();
                      },
                      child: const Text('Submit')))
            ],
          ),
        ),
      );
    });
  }
}
