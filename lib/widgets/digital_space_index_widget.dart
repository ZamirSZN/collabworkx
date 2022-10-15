import 'package:flutter/material.dart';

class DigitalSpaceIndexWidget extends StatelessWidget {
  const DigitalSpaceIndexWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: 500,
        width: 200,
        child: Container(
          color: Colors.grey.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "CollabWorkx",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Text("We are innovating to keep businesses connected "),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: const [
                    Text("Computer science"),
                    Icon(Icons.arrow_right_rounded),
                    Chip(
                      label: Text("Lobby"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
