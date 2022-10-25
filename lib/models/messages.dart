class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;
  final String sender;

  Message(
      {required this.sender,
      required this.text,
      required this.date,
      required this.isSentByMe});
}
