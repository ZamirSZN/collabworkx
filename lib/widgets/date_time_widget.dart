import 'package:collabworkx/widgets/collab_Icon_round_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  String? _time;
  DateTime? _dateTime;
  final dateFormat = DateFormat.yMMMd();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 17),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("Date: "),
                  CollabIconRoundButton(
                      color: Colors.grey,
                      text: _dateTime == null
                          ? dateFormat.format(DateTime.now())
                          : dateFormat.format(_dateTime!),
                      onPressed: () {
                        pickDate(context);
                      },
                      iconData: Icons.calendar_month),
                ],
              ),
              Row(
                children: [
                  const Text("Time: "),
                  CollabIconRoundButton(
                      color: Colors.grey.shade600,
                      text: "12:00 PM",
                      // text: _time == null
                      //     ? TimeOfDay.now().toString()
                      //     : _time.toString(),
                      onPressed: () {
                        pickTime(context);
                      },
                      iconData: Icons.alarm),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void pickTime(BuildContext context) {
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((time) {
      setState(() {
        _time = time.toString();
      });
    });
  }

  void pickDate(BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime(2050))
        .then((date) {
      setState(() {
        _dateTime = DateUtils.dateOnly(
          date!,
        );
      });
    });
  }
}
