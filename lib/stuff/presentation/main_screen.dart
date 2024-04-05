import 'package:b5_todo/stuff/presentation/todo_widget.dart';
import 'package:b5_todo/stuff/todo_provider.dart';
import 'package:b5_todo/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<TodoProvider>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, i) => TodoWidget(task: tasks[i]),
                ),
              ),
              Flexible(
                flex: 1,
                child: Form(
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Neuen Task hinzufügen',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          onAddButtonPressed(_controller.text);
                          _controller.clear();
                          context.read<TodoProvider>().notifyAll();
                        },
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
