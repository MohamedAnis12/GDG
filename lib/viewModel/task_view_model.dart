import 'package:flutter/material.dart';
import 'package:gdg/model/task_model.dart';

class TaskViewModel extends ChangeNotifier {
  final List<TaskModel> _tasks = [];

  List<TaskModel> get tasks => _tasks;

  void addTask(String task) {
    _tasks.add(TaskModel(task));
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
