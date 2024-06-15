import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/add_product_page.dart';
import 'package:practice/controler/home_controler.dart';
import 'package:practice/controler/product_page_controler.dart';
import 'package:practice/firebase_options.dart';
import 'package:practice/widgets/dropdown_button.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
  Get.put(HomeController());
  Get.put(ProductPageControler());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home:  AddProductPage(),
    );
  }
}
