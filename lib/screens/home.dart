import 'package:flutter/material.dart';

import '../widgets/all_tasks_view.dart';
import '../widgets/completed_tasks_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Todo App'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'All Tasks',
                icon: Icon(
                  Icons.list_rounded,
                  size: 24,
                ),
              ),
              Tab(
                text: 'Completed Tasks',
                icon: Icon(Icons.filter_list),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllTasksTab(),
            CompletedTasksTab(),
          ],
        ),
      ),
    );
  }
}
