import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/component/list_view.dart';
import 'package:flutter_app/models/task_date.dart';
import 'package:flutter_app/screens/addTaskScreen.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context, builder: (context) => buildButtomSheet(),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add,size: 40,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Сегодня',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${(context).watch<TaskData>().taskCount} задач',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.white,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )),
              child: List_view(),
            ),
          ),
        ],
      ),
    );
  }
}




