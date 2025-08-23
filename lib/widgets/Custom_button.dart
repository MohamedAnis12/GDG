import 'package:flutter/material.dart';
import 'package:gdg/controllar/task_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.formKey,
    required this.textController,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController textController;
  final TaskController taskController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          if (formKey.currentState!.validate()) {
            taskController.addTask(textController.text);
            textController.clear();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text(
                  'New task',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
            context.go('/');
          }
        },
        child: Container(
          height: 70,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "Add Task",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
