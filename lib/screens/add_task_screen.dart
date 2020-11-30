import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent
              ),
            ),
            TextField(
              maxLength: 100,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter Task',
                focusColor: Colors.lightBlueAccent
              ),
              onChanged: (newText){
                  newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: (){
                //what to do when Add task is pressed
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text('Add'),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
