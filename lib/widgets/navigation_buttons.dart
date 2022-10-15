import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {super.key, required this.iconData, required this.onPressed});
  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: CircleAvatar(
        radius: 25,
        child: IconButton(
            onPressed: onPressed(),
            icon: Icon(
              iconData,
              size: 28,
              color: Colors.white,
            )),
      ),
    );
  }
}
