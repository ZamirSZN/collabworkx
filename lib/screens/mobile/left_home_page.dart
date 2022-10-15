import 'package:collabworkx/services/get_spaces_requests.dart';
import 'package:collabworkx/utils/global_variables.dart';
import 'package:collabworkx/widgets/navigation_buttons.dart';
import 'package:collabworkx/widgets/spaces_avatar_widget.dart';
import 'package:collabworkx/widgets/channels_view.dart';
import 'package:flutter/material.dart';

import '../../widgets/overlapping_panels.dart';

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

  bool isMessagePage = true;

  String spaceImageUrl = "";

  @override
  Widget build(BuildContext context) {
    final Size deviceScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.grey[200],
            child: Row(
              children: [
                Column(
                  children: [
                    NavigationButton(
                        onPressed: () {
                          OverlappingPanels.of(context)
                              ?.reveal(RevealSide.main);
                        },
                        iconData: Icons.home),
                    NavigationButton(
                        onPressed: () {}, iconData: Icons.mail_rounded),
                    NavigationButton(
                        onPressed: () {}, iconData: Icons.account_circle),
                    SizedBox(
                      height: deviceScreen.height / 1.4,
                      width: 70,
                      child: ListView.builder(
                        itemCount: digitalSpace?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                  ],
                ),
                const ChannelsView(
                    // spaceViewImageUrl: spaceImageUrl,
                    )
              ],
            )),
      ),
    );
  }
}
