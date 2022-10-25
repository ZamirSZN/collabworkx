import 'package:collabworkx/models/messages.dart';
import 'package:collabworkx/utils/colors.dart';
import 'package:collabworkx/widgets/collab_round_icon_button.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../../utils/fakedata.dart';

class DigitalSpaceDetailsScreen extends StatefulWidget {
  const DigitalSpaceDetailsScreen({super.key, required this.title});
  final String title;

  @override
  State<DigitalSpaceDetailsScreen> createState() =>
      _DigitalSpaceDetailsScreenState();
}

class _DigitalSpaceDetailsScreenState extends State<DigitalSpaceDetailsScreen> {
  final TextEditingController messageTextFieldController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    messageTextFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("${widget.title} Space"),
          backgroundColor: collabGrey,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CollabIconRoundButton(
                      color: collabGrey,
                      iconData: Icons.send_rounded,
                      onPressed: () {},
                      text: "Invite a member",
                    ),
                    CollabIconRoundButton(
                      color: collabGrey,
                      iconData: Icons.refresh_rounded,
                      onPressed: () {},
                      text: " Update your WorkSpace",
                    ),
                    CollabIconRoundButton(
                      color: collabGrey,
                      iconData: Icons.arrow_downward,
                      onPressed: () {},
                      text: "Write your message below",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CollabworkxInput(
                hintText: "Type your message here",
                onSuffixIconPress: () {},
                preffixIconData: Icons.add,
                suffixIconData: Icons.send_rounded,
                textEditingController: messageTextFieldController,
                textInputType: TextInputType.text,
                validator: (p0) {
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void sendMessage() {
    final userMessage = Message(
        sender: "Me",
        text: messageTextFieldController.text,
        date: DateTime.now(),
        isSentByMe: true);
    messages.add(userMessage);
  }
}
