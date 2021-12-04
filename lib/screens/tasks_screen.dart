import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/screens/add_task_screan.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/models/task.dart';

class TasksScreen extends StatelessWidget {
  @override
  bool value = false;

  String? listLenght = '0';

  /*Widget buildBottomSheet(BuildContext context) => Container();*/

  /*List<Task> taskList = [];*/

  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => AddTaskScreean(),
                backgroundColor: Color(0xFF757575),
              );
            }),
        backgroundColor: Colors.lightBlueAccent,
        body: Consumer<Task>(
            builder: (context, task, child) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              child: Icon(
                                Icons.list,
                                size: 30,
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text('Todoey',
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.white)),
                            SizedBox(height: 10.0),
                            Text(
                              '${task.taskList.length} TASKS',
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                          ),
                          child: TaskList()),
                    ),
                  ],
                ))));
  }
}

// class TasksScreen extends StatefulWidget {
// const TasksScreen({Key? key}) : super(key: key);
//
// @override
// _TasksScreenState createState() => _TasksScreenState();
// }
//
// class _TasksScreenState extends State<TasksScreen> {
// /*  _TasksScreenState({required this.obj});*/
//
// }
