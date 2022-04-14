import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;
  Function fun1;
  TaskWidget(this.task, this.fun,this.fun1);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CheckboxListTile(
              title: Text(task.title),
              value: task.isCompleted,
              onChanged: (v) {
                fun(task);
              },
            ),
          ),
          IconButton(
          onPressed: (){ fun1(task); },
          icon: const Icon(Icons.delete)),
        ],
      ),
    );
  }
}
