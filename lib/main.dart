import 'package:b5_todo/stuff/app.dart';
import 'package:b5_todo/stuff/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => TodoProvider(),
      builder: (context, child) {
        return const App();
      },
    ),
  );
}
