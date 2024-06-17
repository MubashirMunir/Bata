import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'controler/product_page_controler.dart';
import 'widgets/dropdown_button.dart';

class AddProductPage extends StatelessWidget {
   AddProductPage({super.key});

  var List=['Service',
  'Bota',
  'Clara',
  'Cheeta',
  'Bata',];
   var List2=['Shove',
     'Boots',
     'Pumpy',
     'Loofer',
     'Joger',];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductPageControler>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Add Product'),
        ),
        body: SingleChildScrollView(padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Add New Product",
                style: TextStyle(
                  color: Colors.greenAccent,
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
              TextField(keyboardType: TextInputType.number,
                controller: ctrl.price,
                decoration: const InputDecoration(
                    label: Text("product Price"),
                    border: OutlineInputBorder(),
                    hintText: "Price"),
              ),
              const SizedBox(height: 0,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropDown(
                    Hint: 'Brand',
                    OnSelect: (selectedItem){
                      ctrl.category=selectedItem;
                      ctrl.update();
                    },
                      // value: 'cat1',
                      // text: "Brand",
                       list: List,
                     dropdowntext: ctrl.category,

                      ),
                  SizedBox(width: 20),
                  DropDown(OnSelect: (selectedItem){
                    ctrl.brand=selectedItem;
                    ctrl.update();
                    print(selectedItem);
                  },
                    Hint: 'Category',
                    // dropdownvalue:'Bota',
                      //list: ['Service','Calza','Clara','Cheetah','J.'],
                      // text: 'brand1',
                    list: List2, dropdowntext: ctrl.brand,
                      )],
              ),
              const Text(
                "Offer Product ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 30,
              ),
              DropDown(OnSelect: (selectedItem){
                ctrl.offer=selectedItem;
                ctrl.update();
                print(selectedItem);
              },

                Hint: 'Category',
                // dropdownvalue:'Bota',
                //list: ['Service','Calza','Clara','Cheetah','J.'],
                // text: 'brand1',
                list:['Yes','No'], dropdowntext: ctrl.offer,
              ),
              Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        ctrl.addProduct();
                        ctrl.clear();
                        print('ok');
                      },
                      child: const Text('Submit')))
            ],
          ),
        ),
      );
    });
  }
}
