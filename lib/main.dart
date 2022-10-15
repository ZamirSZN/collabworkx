import 'package:collabworkx/screens/mobile/mobile_home_screen.dart';
import 'package:collabworkx/screens/mobile/welcome_screen.dart';
import 'package:collabworkx/utils/colors.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Collabworkx',
        theme: ThemeData(
          fontFamily: "PulpDisplay",
          primaryColor: collabGrey,
        ),
        home: const MobileHomeScreen());
  }
}
