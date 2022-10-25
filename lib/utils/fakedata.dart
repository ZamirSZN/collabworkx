import 'package:collabworkx/models/messages.dart';

final List<Map<String, dynamic>> myDigitalSpaces = [
  {
    "spaceTitle": "Silicon Valley Agency",
    "spaceDescription": "Specialize in making kuberetes solutions ",
    "spaceIndustry": "Cloud Tech",
    "spaceImage": "images/space5.jpg"
  },
  {
    "spaceTitle": "Stimson",
    "spaceDescription":
        "Scale and manage your businesses with us, we are a California based startup",
    "spaceIndustry": "DevOps",
    "spaceImage": "images/space2.jpg"
  },
  {
    "spaceTitle": "DataStax Devs",
    "spaceDescription":
        "Making the world a better place one line code at a time",
    "spaceIndustry": "Software design",
    "spaceImage": "images/space3.jpg"
  },
];

final List<Map<String, dynamic>> digitalSpaces = [
  {
    "spaceTitle": "CollabWorkx",
    "spaceDescription":
        "We are innovating to keep your business connected and agile.",
    "spaceIndustry": "Computer Science",
    "spaceImage": "images/space10.png"
  },
  {
    "spaceTitle": "SuccessGenome",
    "spaceDescription":
        "Social exponential entreprenuer incubator, accelerator & launch platform",
    "spaceIndustry": "Human Resources",
    "spaceImage": "images/space1.jpg"
  },
  {
    "spaceTitle": "Teleportec",
    "spaceDescription":
        "Silicon Valley based company that specialize in executive programes, consulting & engagements",
    "spaceIndustry": "Development",
    "spaceImage": "images/space4.jpg"
  },
  {
    "spaceTitle": "Stimson",
    "spaceDescription":
        "Scale and manage your businesses with us, we are a California based startup",
    "spaceIndustry": "DevOps",
    "spaceImage": "images/space2.jpg"
  },
  {
    "spaceTitle": "DataStax Devs",
    "spaceDescription":
        "Making the world a better place one line code at a time",
    "spaceIndustry": "Software design",
    "spaceImage": "images/space3.jpg"
  },
  {
    "spaceTitle": "Silicon Valley Agency",
    "spaceDescription": "Specialize in making kuberetes solutions ",
    "spaceIndustry": "Cloud Tech",
    "spaceImage": "images/space5.jpg"
  },
];

final List<Map<String, dynamic>> dmUSers = [
  {
    "name": "Habeebah Lawal",
    "avatar": "images/user1.jpg",
    "isActive": true,
    "status": "Having Lunch"
  },
  {
    "name": "Doris Yang",
    "avatar": "images/user2.jpg",
    "isActive": true,
    "status": "Active"
  },
  {
    "name": "Trevor De-Santa",
    "avatar": "images/user3.jpg",
    "isActive": false,
    "status": "On Vacation"
  },
  {
    "name": "Zamira Arthur",
    "avatar": "images/user4.jpg",
    "isActive": true,
    "status": "Busy"
  },
  {
    "name": "Mubarak Lawal",
    "avatar": "images/user5.jpg",
    "isActive": false,
    "status": "Building CollabWorkx"
  },
];

final List<Map<String, dynamic>> activeUsers = [
  {
    "name": "Habeebah Lawal",
    "avatar": "images/user1.jpg",
    "isActive": true,
    "status": "Having Lunch"
  },
  {
    "name": "Doris Yang",
    "avatar": "images/user2.jpg",
    "isActive": true,
    "status": "Active"
  },
  {
    "name": "Zamira Arthur",
    "avatar": "images/user4.jpg",
    "isActive": true,
    "status": "Busy"
  },
  {
    "name": "Mubarak Lawal",
    "avatar": "images/user5.jpg",
    "isActive": true,
    "status": "Building CollabWorkx"
  },
];

List<Message> messages = [
  Message(
      sender: "Mubarak Lawal",
      text: "Hey hi guys :)",
      date: DateTime.now().subtract(const Duration(days: 4, minutes: 3)),
      isSentByMe: false),
  Message(
      sender: "Me",
      text: "How's the project coming",
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 2)),
      isSentByMe: true),
  Message(
      sender: "Zamira Arthur",
      text: "We're almost done with the demo",
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 5)),
      isSentByMe: false),
  Message(
      sender: "Me",
      text: "Okay great, can you please upload it ",
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 10)),
      isSentByMe: true),
  Message(
      sender: "Zamira Arthur",
      text: "Yeah, sure",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 25)),
      isSentByMe: false),
  Message(
      sender: "Doris Yang",
      text: "And also make it private please",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
      isSentByMe: false),
  Message(
      sender: "Me",
      text: "Alright, send me an invitaton",
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 3)),
      isSentByMe: true),
  Message(
      sender: "Mubarak Lawal",
      text: "Okay, whats your email",
      date: DateTime.now().subtract(const Duration(days: 1, minutes: 40)),
      isSentByMe: false),
  Message(
      sender: "Me",
      text: "zamirszn@gmail.com",
      date: DateTime.now().subtract(const Duration(days: 1, minutes: 3)),
      isSentByMe: true),
];
