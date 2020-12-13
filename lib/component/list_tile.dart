import 'package:flutter/material.dart';

class List_tile extends StatelessWidget {
  final bool isCheck;
  final String taskTile;
  final Function checkboxCallback;
  final Function longPress;

  List_tile({this.isCheck, this.taskTile, this.checkboxCallback,this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        taskTile,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isCheck,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleChekcboxState;
//
//   TaskCheckBox({this.checkBoxState, this.toggleChekcboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       onChanged: toggleChekcboxState,
//     );
//   }
// }
