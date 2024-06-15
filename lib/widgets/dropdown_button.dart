import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/controler/drop_down.dart';

class DropDown extends StatelessWidget {
    DropDown({
    required this.text,
    required this.list,
  //   required this.value,
      //   required this.onSelected
   });
 //  final String value;
  final String text;
  final List<String> list;
 // final Function(String?) onSelected;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DropDownController>(builder: (ctrl) {
      return
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  hint: Text(text),
                  // Initial Value
                  value: ctrl.dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: list.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    ctrl.onChange(newValue!);
                  },
                ),
              ],
            ),
          ),
        );
    });
  }
}
