import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDown extends StatelessWidget {
// List of items in our dropdown menu
  var items = 0;
  String dropdownvalue = 'Bota';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geeksforgeeks"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: [
                'Service',
                'Bota',
                'Clara',
                'Cheeta',
                'Bata',
              ].map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                dropdownvalue = newValue!;
              },
            ),
          ],
        ),
      ),
    );
  }

}