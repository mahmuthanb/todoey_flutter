import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontWeight: !isChecked ? FontWeight.w900 : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckboxState: (bool checkboxstate) {
          setState(() {
            isChecked = checkboxstate;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckboxState;

  TaskCheckBox({this.checkBoxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
