import 'package:flutter/material.dart';
import 'package:gdg/Views/Add_task_view.dart';
import 'package:gdg/controllar/task_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';

class TasksViewBody extends StatelessWidget {
  TasksViewBody({super.key});
  TaskController taskController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Obx(() {
            return ListView.builder(
              itemCount: taskController.tasks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: Text(taskController.tasks[index].task),
                      trailing: IconButton(
                        onPressed: () {
                          taskController.deleteTask(index);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
        SizedBox(height: 50),

        ElevatedButton(
          onPressed: () {
            context.go('/add-task');
          },
          child: Text("Add task"),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
