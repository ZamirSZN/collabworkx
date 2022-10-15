import 'package:flutter/material.dart';

class CollabDropDown extends StatefulWidget {
  const CollabDropDown(
      {super.key, required this.dropdownitems, required this.hintText});
  final List<String> dropdownitems;
  final String hintText;

  @override
  State<CollabDropDown> createState() => _CollabDropDownState();
}

class _CollabDropDownState extends State<CollabDropDown> {
  String? dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      borderRadius: BorderRadius.circular(10),
      isExpanded: true,
      value: dropdownvalue,
      hint: Text(widget.hintText),
      icon: const Icon(Icons.keyboard_arrow_down),
      items: widget.dropdownitems.map(
        (String item) {
          return DropdownMenuItem(
            value: item,
            child: Text(
              item,
            ),
          );
        },
      ).toList(),
      onChanged: (newValue) {
        setState(() {
          dropdownvalue = newValue.toString();
        });
      },
    );
  }
}
