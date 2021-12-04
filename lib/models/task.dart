import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Task extends ChangeNotifier {
  Task({ this.ischecked = false});
  bool ischecked;
  String title="";


  void toggleDone() {
    if (this.ischecked) {
      this.ischecked = false;
    } else {
      this.ischecked = true;
    }

    notifyListeners();
    print('tsak file : ${this.ischecked}');
  }

  List<Task> taskList = [];

  void addTotheTaskList(String text) {
    Task tmp = Task();
    tmp.title = text;
    taskList.add(tmp);
    notifyListeners();

  }
}
