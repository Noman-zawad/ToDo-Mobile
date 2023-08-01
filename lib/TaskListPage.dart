import 'package:flutter/material.dart';
import 'package:todo_app/Models/TaskClass.dart';
import 'package:todo_app/Widgets/TaskCard.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<TaskClass> taskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task Board",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        TaskCard(
          taskName: "Task One",
          details: "This is task",
          dataTime: DateTime.now(),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          taskList.add(TaskClass(
              taskName: "taskName",
              details: "details",
              dataTime: DateTime.now()));
          print(taskList);
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
