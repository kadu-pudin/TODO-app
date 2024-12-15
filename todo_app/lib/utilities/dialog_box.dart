import 'package:flutter/material.dart';
import 'package:todo_app/utilities/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      content: Container(
        height: 150,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              cursorColor: Colors.blueGrey.shade900,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blueGrey.shade900),
                ),
                prefixIcon: Icon(Icons.draw),
                prefixIconColor: Colors.blueGrey.shade900,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blueGrey.shade900),
                ),
                hintText: 'Create New Task',
                hintStyle: TextStyle(
                    color: Colors.blueGrey[700], fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Cancelar', onPressed: onCancel),
                SizedBox(
                  width: 10,
                ),
                MyButton(text: 'Salvar', onPressed: onSave)
              ],
            )
          ],
        ),
      ),
    );
  }
}
