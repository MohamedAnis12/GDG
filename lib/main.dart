import 'package:flutter/material.dart';
import 'package:gdg/Views/Home_view.dart';
import 'package:gdg/controllar/task_controller.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

void main() {
  runApp( FoodApp());
}

class FoodApp extends StatelessWidget {
   FoodApp({super.key});
  final TaskController taskController = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
