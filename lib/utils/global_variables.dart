import 'package:collabworkx/models/digital_spaces.dart';
import 'package:collabworkx/screens/mobile/mobile_home_screen.dart';
import 'package:flutter/material.dart';

List<DigitalSpace>? myDigitalSpace;
List<DigitalSpace>? allDigitalSpaces;

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



bool isChatScreenShown = false;
bool isDmViewShown = true;
