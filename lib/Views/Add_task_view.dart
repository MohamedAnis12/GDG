import 'package:flutter/material.dart';
import 'package:gdg/Widgets/Add_Task_View_Body.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        bottom: PreferredSize(
          preferredSize: Size(20, 20),
          child: Text(
            "To-Do List [1]",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
      body: AddTaskViewBody(),
    );
  }
}
