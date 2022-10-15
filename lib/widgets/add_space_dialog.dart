import 'package:collabworkx/widgets/collab_Icon_round_button.dart';
import 'package:collabworkx/widgets/collab_dropdown.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';

Future<void> addSpaceDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AddSpaceDialogContainer();
    },
  );
}

// showSpaceBottomSheet(context, deviceScreen);

class AddSpaceDialogContainer extends StatelessWidget {
  AddSpaceDialogContainer({super.key});

  final TextEditingController spaceNameTextController = TextEditingController();
  final TextEditingController spaceDescriptionTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
        child: SizedBox(
          height: 370,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Create a Digital Space",
                style: TextStyle(fontSize: 20),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Text(
                "Stay Connected, Work , Share & Collaborate",
                style: TextStyle(fontSize: 13),
              ),
              CollabworkxTextInput(
                hintText: "Digital space name",
                textEditingController: spaceNameTextController,
                textInputType: TextInputType.name,
              ),
              CollabworkxTextInput(
                hintText: "Description",
                textEditingController: spaceNameTextController,
                textInputType: TextInputType.name,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: CollabDropDown(dropdownitems: [
                  "Security",
                  "Legal Services",
                  "Law Practices",
                  "Arts & Crafts",
                ], hintText: "Pick an industry"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CollabIconRoundButton(
                    color: Colors.red,
                    iconData: Icons.close,
                    onPressed: () {},
                    text: "Close",
                  ),
                  CollabIconRoundButton(
                    color: Colors.green,
                    iconData: Icons.check,
                    onPressed: () {},
                    text: "Create Space",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
