import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
   DropDown({Key? key, required this.text, required this.list, required this.value, required this.onSelected}) : super(key: key);
  final String value;
 final String text;
 final List<String> list;
 final Function(String?) onSelected;

  @override
  Widget build(BuildContext context) {
    return  Material(
        child: Center(child:
            DropdownButton(
              // Initial Value
              value: value,
              items: list.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(text),
                );
              }).toList(),
               onChanged: (String? newValue) {
                 onSelected(newValue);
               },
            ),
        ),
    );
  }
}
