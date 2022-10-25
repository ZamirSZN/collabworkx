import 'package:flutter/material.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget(
      {super.key,
      required this.name,
      required this.avatar,
      required this.onTap,
      required this.status,
      required this.isActive});
  final String name;
  final String avatar;
  final String status;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final Size deviceScreen = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.grey.shade200,
          width: deviceScreen.width / 1.6,
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(avatar),
                height: 50,
              ),
            ),
            // CircleAvatar(
            //   radius: 25,
            //   backgroundImage: AssetImage(avatar),
            // ),

            Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(status),
              ],
            ),

            isActive
                ? Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 20,
                    width: 20,
                    decoration: const ShapeDecoration(
                      color: Colors.green,
                      shape: CircleBorder(),
                    ),
                  )
                : Container(
                    height: 20,
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    decoration: const ShapeDecoration(
                      color: Colors.grey,
                      shape: CircleBorder(),
                    ),
                  ),
          ]),
        ),
      ),
    );
  }
}
