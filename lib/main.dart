import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/task_date.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return ChangeNotifierProvider<TaskData>(
        create: (context) => TaskData(),
        child: MaterialApp(
          home: TaskScreen(),
        ),
      );
    }
}
