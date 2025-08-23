import 'package:flutter/material.dart';
import 'package:gdg/Widgets/Custom_text_field.dart';
import 'package:gdg/controllar/task_controller.dart';
import 'package:gdg/widgets/Custom_button.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textController = TextEditingController();
  TaskController taskController=Get.find();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(controller: _textController),
          CustomButton(textController: _textController, formKey: _formKey),
          const SizedBox(height: 16),
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
        ],
      ),
    );
  }
}
