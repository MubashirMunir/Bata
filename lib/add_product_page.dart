import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:practice/widgets/dropdown_button.dart';

import 'controler/product_page_controler.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPageControler>(builder: (ctrl){
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
                controller: ctrl.tc,
                decoration: const InputDecoration(
                    label: Text("product name"),
                    border: OutlineInputBorder(),
                    hintText: "Enter Product Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    label: Text("product Description"),
                    border: OutlineInputBorder(),
                    hintText: "Enter Product Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    label: Text("product Image"),
                    border: OutlineInputBorder(),
                    hintText: "Image Url"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    label: Text("product Price"),
                    border: OutlineInputBorder(),
                    hintText: "Price"),
              ),
              Row(
                children: [
                  Flexible(
                      child: DropDown(
                          value: 'cat1',
                          text: "cat1",
                          list: const [
                            'cat1',
                            'cat2',
                            'cat3',
                          ],
                          onSelected: (selectedVal) {})),
                  Flexible(
                      child: DropDown(
                    text: 'brand',
                    list: const ['brand1', 'brand2', 'brand3'],
                    onSelected: (selectedVal) {},
                    value: 'brand1',
                  ))
                ],
              ),
              const Text(
                "Offer Product ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              DropDown(
                  value: 'No',
                  text: 'No',
                  list: const ['No', 'Yes'],
                  onSelected: (selectedVal) {print(selectedVal);}),
              SizedBox(height: 30,),
              SizedBox(
                    width: 200,
                  height: 50,
                  child: ElevatedButton(
                     
                      onPressed: (){ctrl.addProduct();}, child: Text('Submit')))
            ],
          ),
        ),
      );
    });
  }
}
