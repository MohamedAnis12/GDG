import 'package:flutter/material.dart';
import 'package:gdg/Widgets/Tasks_view_body.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(10, 10),
          child: Text(
            "Tasks",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: TasksViewBody(),
    );
  }
}
