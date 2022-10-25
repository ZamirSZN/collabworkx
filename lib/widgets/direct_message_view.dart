import 'package:collabworkx/utils/fakedata.dart';
import 'package:collabworkx/widgets/contacts_widget.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';

class DirectMessageView extends StatefulWidget {
  // final String spaceViewImageUrl;
  const DirectMessageView({
    super.key,
    // required this.spaceViewImageUrl,
  });

  @override
  State<DirectMessageView> createState() => _DirectMessageViewState();
}

class _DirectMessageViewState extends State<DirectMessageView> {
  final TextEditingController dmTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    dmTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size deviceScreen = MediaQuery.of(context).size;
    return Expanded(
      child: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Direct Messages",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: deviceScreen.width / 1.6,
                  child: CollabworkxInput(
                    isPassword: false,
                    onSuffixIconPress: () {},
                    preffixIconData: Icons.mail,
                    suffixIconData: Icons.search,
                    validator: (p0) {
                      return null;
                    },
                    hintText: "Search Messages",
                    textEditingController: dmTextController,
                    textInputType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ...dmUSers.map((user) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: ContactsWidget(
                        name: user["name"]!,
                        avatar: user["avatar"]!,
                        onTap: () {},
                        status: user["status"]!,
                        isActive: user["isActive"],
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
