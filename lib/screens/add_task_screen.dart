import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorWidth: 4,
              cursorColor: Colors.lightBlueAccent,
              decoration: InputDecoration(
                focusedBorder: kTextFieldBorder,
                enabledBorder: kTextFieldBorder,
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {addTaskCallback(newTaskTitle);},
              child: Text('Add'),
              style: kFlatButtonStyle,
            ),
          ],
        ),
      ),
    );
  }
}
