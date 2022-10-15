import 'package:collabworkx/utils/global_variables.dart';
import 'package:flutter/material.dart';

class RightHomePage extends StatelessWidget {
  const RightHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Row(
          children: [
            Container(
              width: 50,
            ),
            Expanded(
              child: SafeArea(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey[100]!))),
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "@",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const Expanded(
                                      child: Text(
                                    " Miguel77",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.more_horiz))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.search,
                                      size: 25,
                                      color: Colors.grey,
                                    )),
                                const Text(
                                  "Search",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ]),
                              const Expanded(child: SizedBox()),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.push_pin,
                                        size: 25,
                                        color: Colors.grey,
                                      )),
                                  const Text(
                                    "Pinned",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.notifications,
                                        size: 25,
                                        color: Colors.grey,
                                      )),
                                  const Text(
                                    "Notifications",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.grey[200]),
                              padding: const EdgeInsets.all(7),
                              child: const Icon(Icons.person_add_alt_1),
                            ),
                            title: const Text("New Group DM"),
                            onTap: () {},
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.grey[100],
                            child: Material(
                              child: ListView(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 16, left: 16, right: 16),
                                    child: Text(
                                      'MEMBERS - 3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  ...users.map((user) => ListTile(
                                        leading: const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 15,
                                          child: Icon(
                                            Icons.account_circle_rounded,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        horizontalTitleGap: 0,
                                        title: Text(user["name"]!),
                                        onTap: () {},
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
