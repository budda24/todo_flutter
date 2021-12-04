import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatelessWidget {

/*  String title;

  TaskList({required this.title });*/


  @override
  Widget build(BuildContext context) {
    return Consumer<Task>(
      builder: (context, task, child){
        return ListView.builder(
            itemCount: task.taskList.length,
            itemBuilder: (BuildContext context, index) {
              return CustomListTile(
                  taskO:task.taskList[index],
              );
            }
        );
      }
    );
  }
}


/*  class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
  }

  class _TaskListState extends State<TaskList> {
  }*/

