import 'package:collabworkx/screens/mobile/mobile_home_screen.dart';
import 'package:collabworkx/screens/mobile/responsive_layout.dart';
import 'package:collabworkx/screens/mobile/signup_screen.dart';
import 'package:collabworkx/screens/web/web_screen.dart';
import 'package:collabworkx/utils/colors.dart';
import 'package:collabworkx/widgets/loading_indicator.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final bool _isLoading = false;
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _loginFormKey,
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
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Lets get you logged in",
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CollabworkxInput(
                    validator: (value) {
                      if (value!.isNotEmpty &&
                          value.length >= 2 &&
                          value.contains("@")) {
                        return null;
                      } else if (value.length < 3 && value.isNotEmpty) {
                        return "Email is too short";
                      } else {
                        return "Please enter a valid email";
                      }
                    },
                    onSuffixIconPress: () {
                      _emailTextController.clear();
                    },
                    suffixIconData: Icons.clear,
                    preffixIconData: Icons.email,
                    hintText: "Email",
                    textInputType: TextInputType.emailAddress,
                    textEditingController: _emailTextController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CollabworkxInput(
                    maxLines: 1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter a password ";
                      } else if (value.length < 3 && value.isNotEmpty) {
                        return "Password is too short";
                      } else {
                        return null;
                      }
                    },
                    suffixIconData: _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    onSuffixIconPress: () {
                      makePasswordVisible();
                    },
                    preffixIconData: Icons.password_rounded,
                    hintText: "Password",
                    textInputType: TextInputType.visiblePassword,
                    textEditingController: _passwordTextController,
                    isPassword: _isPasswordVisible ? false : true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () async {
                    // final form = _loginFormKey.currentState;
                    // if (form!.validate()) {
                    //   setState(() {
                    //     form.save();
                    //   });
                    // }
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ResponsiveLayout(
                          mobileScreenLayout: MobileHomeScreen(),
                          webScreenLayout: WebScreenLayout()),
                    ));
                  },
                  child: Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                        color: collabBlack,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: _isLoading
                        ? const LoadingIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            "Log In",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account?"),
                    GestureDetector(
                        onTap: () {},
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ));
                          },
                          child: const Text(
                            " Signup here",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ]),
        ),
      ),
    );
  }

  void makePasswordVisible() {
    if (!_isPasswordVisible) {
      setState(() {
        _isPasswordVisible = true;
      });
    } else {
      setState(() {
        _isPasswordVisible = false;
      });
    }
  }
}
