import 'package:flutter/material.dart';
import 'package:my_to_dos/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
                hintText: "Add a new task",
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
            // button -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save Button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(
                  width: 8,
                ),

                //Cancel Button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
