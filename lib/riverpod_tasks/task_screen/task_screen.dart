
import 'package:flutter/material.dart';
import 'package:flutter_playground/riverpod_tasks/task_screen/task_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class TaskScreen extends ConsumerWidget {


  final TextEditingController _controller = TextEditingController();

  TaskScreen({super.key});

  void _showTaskDialog({int? index , required List<String> tasks , required BuildContext context , required WidgetRef ref}) {

    if (index != null) {
      _controller.text = tasks[index];
    } else {
      _controller.clear();
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(index == null ? "Add Task" : "Edit Task"),
        content: TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: "Enter task"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              if (_controller.text.trim().isEmpty) return;
              if (index == null) {
                ref.read(taskNotifierProvider.notifier).addTask(_controller.text.trim());
              } else {
                ref.read(taskNotifierProvider.notifier).editTask(index, _controller.text.trim());
              }
              Navigator.pop(context);
            },
            child: Text(index == null ? "Add" : "Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final tasks = ref.watch(taskNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Task Manager")),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(tasks[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  onPressed: () => _showTaskDialog(index: index , tasks: tasks , context: context , ref: ref),
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => ref.read(taskNotifierProvider.notifier).removeTask(index),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showTaskDialog(tasks: tasks , context: context , ref: ref),
        child: const Icon(Icons.add),
      ),
    );
  }
}