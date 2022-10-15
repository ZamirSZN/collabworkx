import 'package:collabworkx/utils/colors.dart';
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
        backgroundColor: collabGrey,
        radius: 23,
        child: IconButton(
            onPressed: onPressed(),
            icon: Icon(
              iconData,
              size: 24,
              color: Colors.white,
            )),
      ),
    );
  }
}
