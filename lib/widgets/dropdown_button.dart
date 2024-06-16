import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDown extends StatelessWidget {
  DropDown({required this.list, required this.dropdowntext ,required this.OnSelect, required this.Hint});
// List of items in our dropdown menu
  var items = 0;
  final Hint;
   final dropdowntext;
  final Function(String) OnSelect;
 final List<String> list;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      elevation: 4,
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(10),
              // Initial Value
      hint: Text(Hint),
              value: dropdowntext,
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
              onChanged: (newValue) {
               OnSelect(newValue.toString());

              },
            );
  }

}