import 'package:collabworkx/widgets/collab_Icon_round_button.dart';
import 'package:collabworkx/widgets/collab_dropdown.dart';
import 'package:collabworkx/widgets/date_time_widget.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';

Future<void> showScheduleMeetingBottomSheet(
    BuildContext context, Size deviceScreen) {
  return showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return const IndustryBottomSheetContainer();
      });
}

class IndustryBottomSheetContainer extends StatefulWidget {
  const IndustryBottomSheetContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<IndustryBottomSheetContainer> createState() =>
      _IndustryBottomSheetContainerState();
}

class _IndustryBottomSheetContainerState
    extends State<IndustryBottomSheetContainer> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final Size deviceScreen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: deviceScreen.height * 0.9,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(
            width: 5,
            color: Colors.transparent,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Center(
                  child: SizedBox(
                      width: 50,
                      height: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.videocam_rounded,
                    color: Colors.blue,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Schedule Meeting",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Topic",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              CollabworkxTextInput(
                  hintText: "Add title",
                  textInputType: TextInputType.text,
                  textEditingController: titleController),

              const DateTimeWidget(title: "Start"),
              const DateTimeWidget(title: "End"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CollabDropDown(dropdownitems: [
                  "GMT-05:00 Eastern Time (US & Canada)",
                  "WAT-18:00 West African Time ",
                ], hintText: "Pick a timezone"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Send invites",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              CollabworkxTextInput(
                  hintText: "Add Emails",
                  textInputType: TextInputType.text,
                  textEditingController: titleController),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Passcode",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              CollabworkxInput(
                hintText: "Optional",
                textInputType: TextInputType.visiblePassword,
                textEditingController: titleController,
                preffixIconData: Icons.password_rounded,
                suffixIconData: Icons.visibility,
                onSuffixIconPress: () {},
                validator: (p0) {
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CollabIconRoundButton(
                    color: Colors.red,
                    iconData: Icons.close,
                    onPressed: () {},
                    text: "Discard",
                  ),
                  CollabIconRoundButton(
                    color: Colors.green,
                    iconData: Icons.check,
                    onPressed: () {},
                    text: "Schedule",
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 40,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
