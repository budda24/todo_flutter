import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class CustomListTile extends StatelessWidget {
  Task taskO;

  CustomListTile({required this.taskO});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(taskO.title,
            style: TextStyle(
                fontSize: 20,
                decoration: taskO.ischecked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none)),
        trailing: Checkbox(
            value: taskO.ischecked,
            onChanged: (value) {
              taskO.toggleDone();
            }));
  }
}
