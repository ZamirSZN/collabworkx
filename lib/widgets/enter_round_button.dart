import 'package:flutter/material.dart';

class EnterRoundButton extends StatelessWidget {
  final Function() onButtonPressed;
  const EnterRoundButton({Key? key, required this.onButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade200,
      ),
      child: IconButton(
        onPressed: onButtonPressed,
        icon: const Icon(
          Icons.chevron_right_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}
