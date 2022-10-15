import 'package:collabworkx/utils/global_variables.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return widget.webScreenLayout;
        } else {
          return widget.mobileScreenLayout;
        }
      },
    );
  }
}
