import 'package:cloud_firestore/cloud_firestore.dart';
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
              body: Column(
                children:[
                  Expanded(
                  child:StreamBuilder(stream: ctrl.firestore,
                      builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot) {
                    if(snapshot.connectionState == ConnectionState.waiting){
                      const Center(child: CircularProgressIndicator());}
                    else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return const Center(child: Text('No Data Available'));
                    }
                    var data=snapshot.data!.docs;

                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          var id =data[index].id;
                          return ListTile(
                            title: Text(data[index]['name'].toString()),
                            trailing:  IconButton(
                            onPressed: (){
                              ctrl.deleteData(id);
                           },
                               icon: const Icon(Icons.delete),),
                            subtitle:Text(data[index]['price'].toString()),
                          );
                        });
                  }),
                )
                ]),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  Get.to( AddProductPage());
                },
              ));
      });
  }
}
