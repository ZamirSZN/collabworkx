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


final users = [
  {
    "name": "Zamir",
    "avatar": "https://avatars.githubusercontent.com/u/5024388?v=4"
  },
  {
    "name": "FakeUser",
    "avatar":
        "https://pbs.twimg.com/profile_images/1015894689873047552/tKix6k5V_400x400.jpg"
  },
  {
    "name": "RealUser",
    "avatar":
        "https://pbs.twimg.com/profile_images/1380809190738907136/CIuQ8y84_400x400.jpg"
  },
];