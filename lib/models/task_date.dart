import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _task = [
    Task(name: 'Первая задача'),
    Task(name: 'Вторая задача'),
    Task(name: 'Третья задача'),
    Task(name: 'Четвертая задача'),
  ];

  List<Task> get task {
    return _task;
  }

  int get taskCount{
    return _task.length;
  }

  void addTask(String newTaskTitle){
    final tasks = Task(name: newTaskTitle);
    _task.add(tasks);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _task.remove(task);
    notifyListeners();
  }
}
