import 'package:collabworkx/widgets/collab_round_icon_button.dart';
import 'package:collabworkx/widgets/collab_dropdown.dart';
import 'package:collabworkx/widgets/text_field.dart';
import 'package:flutter/material.dart';

Future<void> addSpaceDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AddSpaceDialogContainer();
    },
  );
}

// showSpaceBottomSheet(context, deviceScreen);

class AddSpaceDialogContainer extends StatefulWidget {
  const AddSpaceDialogContainer({super.key});

  @override
  State<AddSpaceDialogContainer> createState() =>
      _AddSpaceDialogContainerState();
}

class _AddSpaceDialogContainerState extends State<AddSpaceDialogContainer> {
  final TextEditingController spaceNameTextController = TextEditingController();

  final TextEditingController spaceDescriptionTextController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    spaceNameTextController.dispose();
    spaceDescriptionTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
        child: SizedBox(
          height: 320,
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
                "Stay Connected, Work, Share & Collaborate",
                style: TextStyle(fontSize: 13),
              ),
              CollabworkxTextInput(
                hintText: "Digital space name",
                textEditingController: spaceNameTextController,
                textInputType: TextInputType.name,
              ),
              CollabworkxTextInput(
                hintText: "Description",
                textEditingController: spaceDescriptionTextController,
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
