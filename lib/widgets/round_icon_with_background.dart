import 'package:flutter/material.dart';

class RoundIconWithBackground extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const RoundIconWithBackground(
      {Key? key,
      required this.icon,
      required this.backgroundColor,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
