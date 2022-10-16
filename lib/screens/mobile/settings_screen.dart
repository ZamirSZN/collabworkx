import 'package:collabworkx/widgets/enter_round_button.dart';
import 'package:collabworkx/widgets/round_icon_with_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "Account",
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  horizontalTitleGap: 20,
                  contentPadding: const EdgeInsets.all(0),
                  leading: const FlutterLogo(
                    size: 30,
                  ),
                  title: const Text(
                    "Mubarak Lawal",
                  ),
                  subtitle: const Text("Personal info"),
                  trailing: EnterRoundButton(
                    onButtonPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Settings",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const RoundIconWithBackground(
              icon: Icons.language,
              backgroundColor: Color.fromRGBO(253, 239, 232, 1),
              iconColor: Color.fromRGBO(246, 109, 36, 1),
            ),
            title: const Text("Language"),
            subtitle: const Text("English"),
            trailing: EnterRoundButton(
              onButtonPressed: () {},
            ),
          ),
          ListTile(
            leading: const RoundIconWithBackground(
              icon: Icons.notifications,
              backgroundColor: Color.fromRGBO(232, 248, 225, 1),
              iconColor: Color.fromRGBO(29, 164, 234, 1),
            ),
            title: const Text("Notifications"),
            trailing: EnterRoundButton(
              onButtonPressed: () {},
            ),
          ),
          const ListTile(
              leading: RoundIconWithBackground(
                icon: Icons.nightlight_round_outlined,
                backgroundColor: Color.fromRGBO(217, 216, 234, 1),
                iconColor: Color.fromRGBO(80, 50, 192, 1),
              ),
              title: Text("Dark Mode"),
              trailing: CupertinoSwitch(
                activeColor: Colors.grey,
                onChanged: null,
                value: true,
              )),
          ListTile(
            leading: const RoundIconWithBackground(
              icon: Icons.help,
              backgroundColor: Color.fromRGBO(226, 205, 209, 1),
              iconColor: Color.fromRGBO(227, 44, 85, 1),
            ),
            title: const Text("Help"),
            trailing: EnterRoundButton(
              onButtonPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
