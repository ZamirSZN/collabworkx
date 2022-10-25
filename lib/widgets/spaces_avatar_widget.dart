import 'package:flutter/material.dart';

class SpaceAvatarWidget extends StatefulWidget {
  const SpaceAvatarWidget(
      {Key? key, required this.image, required this.onPressed})
      : super(key: key);
  final String image;
  final VoidCallback onPressed;

  @override
  State<SpaceAvatarWidget> createState() => _SpaceAvatarWidgetState();
}

class _SpaceAvatarWidgetState extends State<SpaceAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage(
          widget.image,
        ),
        child: const Align(
          alignment: Alignment.topRight,
        ),
      ),
    );
  }
}
