import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String taskName;
  final String details;
  final DateTime dataTime;

  const TaskCard({
    Key? key,
    required this.taskName,
    required this.details,
    required this.dataTime,
  }) : super(key: key);

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          widget.taskName,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
        ),
        Text(widget.details),
        Align(
          alignment: Alignment.centerRight,
          child: Text(widget.dataTime.toString().split(".")[0]),
        ),
      ]),
    );
  }
}
