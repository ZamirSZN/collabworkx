import 'package:collabworkx/models/messages.dart';
import 'package:collabworkx/utils/colors.dart';
import 'package:collabworkx/widgets/overlapping_panels.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../utils/fakedata.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.title});
  final String title;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageTextFieldController =
      TextEditingController();

  @override
  void dispose() {
    messageTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Space"),
          backgroundColor: collabGrey,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              OverlappingPanels.of(context)?.reveal(RevealSide.left);
            },
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: [
            Expanded(
                child: GroupedListView<Message, DateTime>(
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              padding: const EdgeInsets.all(8),
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: collabGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  color: Colors.grey.shade300,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message.sender,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          message.text,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CollabworkxInput(
                hintText: "Type your message here",
                onSuffixIconPress: () {
                  sendMessage();
                  setState(() {
                    messageTextFieldController.text = "";
                  });
                },
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
      isSentByMe: true,
    );
    messages.add(userMessage);
  }
}
