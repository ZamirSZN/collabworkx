import 'package:collabworkx/models/digital_spaces.dart';
import 'package:collabworkx/screens/mobile/mobile_home_screen.dart';
import 'package:flutter/material.dart';

List<DigitalSpace>? digitalSpace;

const int webScreenSize = 600;

const double navBarHeight = 65;

const List<Widget> pages = [
  Center(
    child: MobileHomeScreen(),
  ),
  Text("data"),
  Text("data"),
  Text("data"),
];

const String collabImage = "images/collabworkx.png";

bool isChatScreenShown = false;
bool isDmViewShown = true;
