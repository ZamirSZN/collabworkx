import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key, required this.name, required this.avatar, required this.onTap});
  final String name;
  final String avatar;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: const CircleAvatar(
        child: Icon(Icons.account_circle),
      ),
      onTap: onTap,
    );
  }
}
