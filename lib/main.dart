import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/home.dart';

import 'providers/task.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TaskProvider(),
    child: MyApp(),
  ));

  final taskProvider = TaskProvider();
  taskProvider.addSampleTasks();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
