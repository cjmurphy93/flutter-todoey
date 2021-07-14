import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
  });

  // void checkboxCallback(checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {},
      ),
    );
  }
}
