import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'models/task.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Task>(
        create:(context) => Task(),
        child: MaterialApp(
        home:  TasksScreen()),
    );

  }
}

