import 'package:gdg/model/task_model.dart';
import 'package:get/state_manager.dart';

class TaskController extends GetxController {
  var tasks = <TaskModel>[].obs;

  void addTask(String task) {
    tasks.add(TaskModel(task));
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }
}
