import 'package:collabworkx/utils/fakedata.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';

class DirectMessageView extends StatelessWidget {
  // final String spaceViewImageUrl;
  DirectMessageView({
    super.key,
    // required this.spaceViewImageUrl,
  });

  final TextEditingController dmTextController = TextEditingController();

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
                  width: deviceScreen.width / 1.5,
                  child: CollabworkxInput(
                    isPassword: false,
                    onSuffixIconPress: () {},
                    preffixIconData: Icons.people,
                    suffixIconData: Icons.search,
                    validator: (p0) {
                      return null;
                    },
                    hintText: "Search Messages",
                    textEditingController: dmTextController,
                    textInputType: TextInputType.text,
                  ),
                ),
                ...activeUsers.map((user) => ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      horizontalTitleGap: 10,
                      title: Text(user["name"]!),
                      onTap: () {},
                    ))
              ],
            )),
      ),
    );
  }
}
