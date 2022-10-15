import 'package:flutter/material.dart';

class SpaceAvatarWidget extends StatefulWidget {
  const SpaceAvatarWidget({Key? key, required this.image, required this.onPressed}) : super(key: key);
  final String image;
  final Function onPressed;

  @override
  State<SpaceAvatarWidget> createState() => _SpaceAvatarWidgetState();
}

class _SpaceAvatarWidgetState extends State<SpaceAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed(),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(widget.image),
      ),
    );
  }
}
