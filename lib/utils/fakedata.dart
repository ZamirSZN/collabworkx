import 'package:collabworkx/models/messages.dart';

final activeUsers = [
  {
    "name": "zamir",
    "avatar": "https://avatars.githubusercontent.com/u/5024388?v=4"
  },
  {
    "name": "harry",
    "avatar":
        "https://pbs.twimg.com/profile_images/1015894689873047552/tKix6k5V_400x400.jpg"
  },
  {
    "name": "ayanfe",
    "avatar":
        "https://pbs.twimg.com/profile_images/1380809190738907136/CIuQ8y84_400x400.jpg"
  },
];

List<Message> messages = [
  Message(
      text: "Text 1",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
      isSentByMe: true),
  Message(
      text: "Text 2",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 2)),
      isSentByMe: true),
  Message(
      text: "Text 3",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 5)),
      isSentByMe: false),
  Message(
      text: "Text 4",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 10)),
      isSentByMe: true),
  Message(
      text: "Text 3",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 25)),
      isSentByMe: false),
  Message(
      text: "Text 3",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
      isSentByMe: false),
  Message(
      text: "Text 3",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
      isSentByMe: false),
  Message(
      text: "Text 1",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
      isSentByMe: true),
  Message(
      text: "Text 2",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
      isSentByMe: true),
].reversed.toList();
