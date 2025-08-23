import 'package:flutter/material.dart';
import 'package:gdg/Widgets/Custom_text_field.dart';
import 'package:gdg/controllar/task_controller.dart';
import 'package:gdg/widgets/Custom_button.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class AddTaskViewBody extends StatefulWidget {
  const AddTaskViewBody({super.key});

  @override
  State<AddTaskViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<AddTaskViewBody> {
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
          
        ],
      ),
    );
  }
}
