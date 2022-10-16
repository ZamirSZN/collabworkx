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
    // loadSpaces();
  }

  loadSpaces() async {
    var spaces = await DigitalSpacesRequest().getDigitalSpaces();
    setState(() {
      digitalSpace = spaces;
    });
  }

  String spaceImageUrl = "";

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
                          iconData: Icons.home_rounded),
                      NavigationButton(
                          onPressed: () {
                            isChatScreenShown = true;
                            isDmViewShown = false;
                          },
                          iconData: Icons.workspaces_outlined),
                      SizedBox(
                        height: deviceScreen.height / 1.6,
                        width: 70,
                        child: ListView.builder(
                          itemCount: digitalSpace?.length ?? 0,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: SpaceAvatarWidget(
                                  onPressed: () {
                                    spaceImageUrl =
                                        digitalSpace![index].thumbnailUrl!;
                                  },
                                  image: digitalSpace![index].thumbnailUrl!),
                            );
                          },
                        ),
                      ),
                      NavigationButton(
                          onPressed: () {}, iconData: Icons.settings),
                    ],
                  ),
                ),
                showChannelSorDMView(),
              ],
            )),
      ),
    );
  }

  showChannelSorDMView() {
    if (isDmViewShown == true) {
      return DirectMessageView();
    }
    return const ChannelsView();
  }
}
