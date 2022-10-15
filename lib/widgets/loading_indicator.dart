import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 23,
          width: 23,
          child: CircularProgressIndicator(color: color)),
    );
  }
}
