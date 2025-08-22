import 'package:flutter/material.dart';
import 'package:gdg/viewModel/task_view_model.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.formKey,
    required this.textController,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController textController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          if (formKey.currentState!.validate()) {
            Provider.of<TaskViewModel>(
              context,
              listen: false,
            ).addTask(textController.text);

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
