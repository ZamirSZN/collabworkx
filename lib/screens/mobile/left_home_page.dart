import 'package:collabworkx/models/digital_spaces.dart';
import 'package:collabworkx/screens/mobile/settings_screen.dart';
import 'package:collabworkx/services/get_spaces_requests.dart';
import 'package:collabworkx/utils/global_variables.dart';
import 'package:collabworkx/widgets/channels_view.dart';
import 'package:collabworkx/widgets/direct_message_view.dart';
import 'package:collabworkx/widgets/navigation_buttons.dart';
import 'package:collabworkx/widgets/spaces_avatar_widget.dart';
import 'package:flutter/material.dart';

class LeftHomePage extends StatefulWidget {
  const LeftHomePage({Key? key}) : super(key: key);

  @override
  State<LeftHomePage> createState() => _LeftHomePageState();
}

class _LeftHomePageState extends State<LeftHomePage> {
  @override
  void initState() {
    super.initState();
    loadMySpaces();
  }

  loadMySpaces() async {
    var spaces = await DigitalSpacesRequest().getMySpaces();
    setState(() {
      myDigitalSpace = spaces;
    });
  }

  DigitalSpace? currentSpace;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => setState(() {}),
      // dont fucking think of removing this callback except you want sleepless nights
    );

    final Size deviceScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.grey[200],
            width: deviceScreen.width,
            height: deviceScreen.height,
            child: Row(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      NavigationButton(
                          onPressed: () {
                            isChatScreenShown = false;
                            isDmViewShown = true;
                          },
                          iconData: Icons.workspaces_rounded),
                      SizedBox(
                        height: deviceScreen.height / 1.26,
                        width: 70,
                        child: ListView.builder(
                          itemCount: myDigitalSpace?.length ?? 0,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: SpaceAvatarWidget(
                                onPressed: () {
                                  currentSpace = myDigitalSpace![index];
                                  showChatandDMView();
                                },
                                image: myDigitalSpace![index].spaceImage!,
                              ),
                            );
                          },
                        ),
                      ),
                      NavigationButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SettingsScreen(),
                            ));
                          },
                          iconData: Icons.settings),
                    ],
                  ),
                ),
                isShowChannelSorDMView(),
              ],
            )),
      ),
    );
  }

  isShowChannelSorDMView() {
    if (isDmViewShown == true) {
      return const DirectMessageView();
    }
    return ChannelsView(
      spaceDescription: currentSpace!.spaceDescription!,
      spaceImage: currentSpace!.spaceImage!,
      spaceName: currentSpace!.spaceTitle!,
    );
  }

  void showChatandDMView() {
    isChatScreenShown = true;
    isDmViewShown = false;
  }
}
