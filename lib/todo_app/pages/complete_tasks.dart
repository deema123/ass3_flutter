import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  Function fun;
  Function fun2;
  CompleteTasksScreen(this.fun,this.fun2);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList.where((element) => element.isCompleted).toList()[index],
              fun,fun2);
        });
  }
}
