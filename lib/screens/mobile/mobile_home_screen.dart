import 'package:collabworkx/screens/mobile/center_home_page.dart';
import 'package:collabworkx/screens/mobile/chat_screen.dart';
import 'package:collabworkx/screens/mobile/left_home_page.dart';
import 'package:collabworkx/screens/mobile/right_home_page.dart';
import 'package:collabworkx/utils/global_variables.dart';
import 'package:flutter/material.dart';

import '../../widgets/overlapping_panels.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  Offset footerOffset = const Offset(0, 1);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => setState(() {}),
      // dont fucking think of removing this callback except you want sleepless nights
    );
    return Scaffold(
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: const BorderRadius.only(
      //     topLeft: Radius.circular(19),
      //     topRight: Radius.circular(19),
      //   ),
      //   child: NavigationBar(
      //     height: 65,
      //     labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      //     animationDuration: const Duration(seconds: 1),
      //     // selectedIndex: _currentIndex,
      //     // onDestinationSelected: (int newIndex) {
      //     //   setState(() {
      //     //     _currentIndex = newIndex;
      //     //   });
      //     // },
      //     destinations: const [
      //       NavigationDestination(
      //         icon: Icon(Icons.home_outlined),
      //         label: "Home",
      //         selectedIcon: Icon(Icons.home),
      //       ),
      //       NavigationDestination(
      //         icon: Icon(
      //           Icons.location_on_outlined,
      //         ),
      //         label: "Map",
      //         selectedIcon: Icon(
      //           Icons.location_on,
      //         ),
      //       ),
      //       NavigationDestination(
      //         icon: Icon(Icons.account_circle_outlined),
      //         label: "Profile",
      //         selectedIcon: Icon(Icons.account_circle_rounded),
      //       ),
      //       NavigationDestination(
      //           icon: Icon(Icons.settings_outlined),
      //           label: "Settings",
      //           selectedIcon: Icon(Icons.settings)),
      //     ],
      //   ),
      // ),
      body: Stack(
        children: [
          OverlappingPanels(
            onSideChange: (value) {
              print(value);
            },
            left: Builder(builder: (context) {
              return const LeftHomePage();
            }),
            main: Builder(
              builder: (context) {
                return showCenterPage();
              },
            ),
            right: Builder(
              builder: (context) {
                return const RightHomePage();
              },
            ),

            // onSideChange: (side) {
            //   setState(() {
            //     if (side == RevealSide.main) {
            //       footerOffset = const Offset(0, 1);
            //     } else if (side == RevealSide.left) {
            //       footerOffset = const Offset(0, 0);
            //     }
            //   });
            // },
          ),
        ],
      ),
    );
  }

  Widget showCenterPage() {
    if (isChatScreenShown == true) {
      return const ChatScreen();
    }
    return const CenterHomePage();
  }
}
