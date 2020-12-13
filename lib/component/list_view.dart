import 'package:flutter/material.dart';
import 'package:flutter_app/component/list_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/task_date.dart';

class List_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task= taskData.task[index];
            return List_tile(
                taskTile: task.name,
                isCheck: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
              longPress: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
    // return ListView(
    //   padding: EdgeInsets.symmetric(horizontal: 20),
    //   children: [
    //     List_tile(taskTile: task[0].name, isCheck: task[0].isDone,),
    //     List_tile(taskTile: task[1].name, isCheck: task[1].isDone,),
    //     List_tile(taskTile: task[2].name, isCheck: task[2].isDone,),
    //   ],
    // );
  }
}
