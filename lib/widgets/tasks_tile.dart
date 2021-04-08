import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkedboxCallback;
  final Function deleteCallback;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkedboxCallback,
      this.deleteCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkedboxCallback,
      ),
    );
  }
}
