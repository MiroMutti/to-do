import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task.dart';

class CompletedTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    final completedTasks =
        taskProvider.tasks.where((task) => task.completed).toList();
    return Center(
      child: Text('Completed Tasks Tab'),
    );
    return ListView.builder(
      itemCount: completedTasks.length,
      itemBuilder: (context, index) {
        final task = completedTasks[index];
        return ListTile(
          title: Text(task.title),
          trailing: Checkbox(
            value: task.completed,
            onChanged: (value) {
              taskProvider.toggleTaskCompletion(index);
            },
          ),
        );
      },
    );
  }
}
