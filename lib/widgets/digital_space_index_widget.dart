import 'package:flutter/material.dart';

class DigitalSpaceIndexWidget extends StatelessWidget {
  const DigitalSpaceIndexWidget(
      {super.key,
      required this.spaceTitle,
      required this.spaceDescription,
      required this.spaceIndustry,
      required this.spaceImage});
  final String spaceTitle;
  final String spaceDescription;
  final String spaceIndustry;
  final String spaceImage;

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
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(spaceImage),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Text(
                spaceTitle,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Text(
                spaceDescription,
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Text(spaceIndustry),
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
