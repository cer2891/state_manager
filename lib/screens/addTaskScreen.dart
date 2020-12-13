import 'package:flutter/material.dart';
import 'package:flutter_app/models/task.dart';
import 'package:flutter_app/models/task_date.dart';
import 'package:provider/provider.dart';

class buildButtomSheet extends StatelessWidget {
  String newTaskTile;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Добавим задачу',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTile = newText;
                // print(newText);
              },
            ),
            FlatButton(
              onPressed: () {
                context.read<TaskData>().addTask(newTaskTile);
                // Provider.of<TaskData>(context, listen: false).addTask(newTaskTile);
                Navigator.pop(context);
              },
              child: Text(
                'Добавление',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
