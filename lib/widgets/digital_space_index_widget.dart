import 'package:flutter/material.dart';

class DigitalSpaceIndexWidget extends StatelessWidget {
  const DigitalSpaceIndexWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: Colors.grey.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/collabworkx.png"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Text(
                "CollabWorkx",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Text("We are innovating to keep businesses connected "),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Text("Computer science"),
            ),
            Row(
              children: const [
                Icon(Icons.arrow_right_rounded),
                Chip(
                  label: Text("Lobby"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
