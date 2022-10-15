import 'package:flutter/material.dart';

class CollabIconRoundButton extends StatelessWidget {
  const CollabIconRoundButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.onPressed,
      required this.iconData})
      : super(key: key);
  final Color color;
  final String text;
  final Function() onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          backgroundColor: color,
          elevation: 0,
        ),
        onPressed: onPressed,
        icon: Icon(iconData),
        label: Text(text));
  }
}
