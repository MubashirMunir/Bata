import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/add_product_page.dart';

import 'controler/home_controler.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  Map<dynamic, dynamic> data = {
    12: "Ali Awan",
    31: "Younas",
    14: "Ali Awan",
    21: "Younas"
  };
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
              body: Expanded(
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(data.keys.toString()),
                        subtitle: Text(data.values.toString()),
                        trailing:
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                      );
                    }),
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  Get.to( AddProductPage());
                },
              ));
      });
  }
}
