import 'package:collabworkx/screens/mobile/login_screen.dart';
import 'package:collabworkx/screens/mobile/signup_screen.dart';
import 'package:collabworkx/utils/colors.dart';
import 'package:collabworkx/utils/global_variables.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: navBarHeight - 20,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.handshake,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Collabworkx.",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const FlutterLogo(
                size: 350,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome to Collabworkx",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "Join thousands people who use Collabworkx to work with colleagues and friends",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ));
                },
                child: Container(
                  height: 50,
                  decoration: const ShapeDecoration(
                      color: collabBlack,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
                },
                child: Container(
                  height: 50,
                  decoration: const ShapeDecoration(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Text(
                    "Log In",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
