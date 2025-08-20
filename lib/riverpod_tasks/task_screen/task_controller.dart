


import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskNotifier extends StateNotifier<List<String>>{
  TaskNotifier() : super([]);

  void addTask(String task) {
    final updatedTasks = [...state,task];
    state = updatedTasks;
  }
  void removeTask(int idx){
    final updatedTasks = [...state]..removeAt(idx);
    state = updatedTasks;
  }

  void editTask(int idx , String task){

    final updatedTasks = [...state];
    updatedTasks[idx] = task;
    state = updatedTasks;
  }
}

final taskNotifierProvider = StateNotifierProvider(
    (ref) => TaskNotifier()
);