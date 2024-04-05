import 'package:b5_todo/stuff/todo_provider.dart';
import 'package:b5_todo/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoWidget extends StatelessWidget {
  final Task task;
  const TodoWidget({super.key, required this.task});
  @override
  Widget build(BuildContext context) {
    if (task.isDone) {
      return ListTile(
        title: Text(task.title),
        trailing: Checkbox(
            value: task.isDone,
            onChanged: (value) {
              onCheckboxChecked(task);
              context.read<TodoProvider>().notifyAll();
            }),
        tileColor: Colors.green[100],
      );
    } else {
      return ListTile(
        title: Text(task.title),
        trailing: Checkbox(
            value: task.isDone,
            onChanged: (value) {
              onCheckboxChecked(task);
              context.read<TodoProvider>().notifyAll();
            }),
      );
    }
  }
}
