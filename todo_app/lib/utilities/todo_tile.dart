import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
        right: 20,
        left: 20,
      ),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Checkbox(
            value: taskCompleted,
            onChanged: onChanged,
            activeColor: Colors.blueGrey[900],
            checkColor: Colors.blueGrey,
          ),
          Text(
            taskName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color:
                    taskCompleted ? Colors.blueGrey[700] : Colors.blueGrey[900],
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
