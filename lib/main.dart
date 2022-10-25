import 'package:collabworkx/screens/mobile/welcome_screen.dart';
import 'package:collabworkx/utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Collabworkx',
        theme: ThemeData(
          fontFamily: "PulpDisplay",
          primaryColor: collabGrey,
        ),
        home: const WelcomeScreen());
  }
}
