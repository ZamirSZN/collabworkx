import 'package:collabworkx/screens/mobile/login_screen.dart';
import 'package:collabworkx/utils/colors.dart';
import 'package:collabworkx/widgets/loading_indicator.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _verifyPasswordTextController =
      TextEditingController();
  final TextEditingController _usernameTextController = TextEditingController();
  final GlobalKey<FormState> _signupFormKey = GlobalKey<FormState>();
  final bool _isLoading = false;
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _usernameTextController.dispose();
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
          key: _signupFormKey,
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
                  "Lets get you started",
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CollabworkxInput(
                    validator: (value) {
                      if (value!.isNotEmpty && value.length >= 2) {
                        return null;
                      } else if (value.length < 3 && value.isNotEmpty) {
                        return "username is too short";
                      } else {
                        return "please enter a username";
                      }
                    },
                    onSuffixIconPress: () => _usernameTextController.clear(),
                    suffixIconData: Icons.clear,
                    preffixIconData: Icons.account_circle_rounded,
                    hintText: " Username",
                    textInputType: TextInputType.name,
                    textEditingController: _usernameTextController,
                  ),
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
                    onSuffixIconPress: () => _emailTextController.clear(),
                    suffixIconData: Icons.clear,
                    preffixIconData: Icons.email,
                    hintText: " Email",
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
                    hintText: " Password",
                    textInputType: TextInputType.visiblePassword,
                    textEditingController: _passwordTextController,
                    isPassword: _isPasswordVisible ? false : true,
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
                    hintText: "Verify Password",
                    textInputType: TextInputType.visiblePassword,
                    textEditingController: _verifyPasswordTextController,
                    isPassword: _isPasswordVisible ? false : true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () async {
                    // if (_userProfileImage == null) {
                    //   showSnackBar(context, "Please pick a profile image");
                    //   return;
                    // }
                    // final form = _signupFormKey.currentState;
                    // if (form!.validate()) {
                    //   setState(() {
                    //     form.save();
                    //   });
                    //   signupUser();
                    // }
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
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                        },
                        child: const Text(
                          " Login here",
                          style: TextStyle(fontWeight: FontWeight.bold),
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
