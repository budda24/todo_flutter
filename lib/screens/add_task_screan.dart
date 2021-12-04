import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_list.dart';

class AddTaskScreean extends StatelessWidget {
  String taskBody = 'didint change';
  TextEditingController controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 300.0),
      child: Container(
        color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Add Task",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.lightBlueAccent),
                ),
                TextField(
                  style: TextStyle(fontSize: 20.0),
                  controller: controler,
                  onChanged: (value) {
                    taskBody = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Consumer<Task>(
                  builder: (_, task, __){
                    return TextButton(

                        onPressed: () {
                          controler.clear();
                          task.addTotheTaskList(taskBody);
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.lightBlueAccent)),
                        child: Text(
                          'ADD',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ));
                  }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
