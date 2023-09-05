import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task.dart';

class AllTasksTab extends StatelessWidget {
  const AllTasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    return ListView.builder(
      itemCount: taskProvider.tasks.length,
      itemBuilder: (context, index) {
        final task = taskProvider.tasks[index];
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
