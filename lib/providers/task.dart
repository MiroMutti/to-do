import 'package:flutter/foundation.dart';
import 'package:todo/model/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTaskCompletion(int index) {
    _tasks[index].completed = !_tasks[index].completed;
    notifyListeners();
  }

  void addSampleTasks() {
    // final taskProvider = TaskProvider();
    final sampleTasks = List.generate(20, (index) {
      return Task(title: 'Task ${index + 1}');
    });
    addTasks(sampleTasks);
  }

  void addTasks(List<Task> newTasks) {
    _tasks.addAll(newTasks);
    notifyListeners();
  }
}
