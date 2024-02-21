import 'package:flutter/material.dart';
import 'package:note_app/utils/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancle;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add a new task'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Cancle", onPressed: onCancle),
                const SizedBox(width: 8),
                MyButton(text: "Save", onPressed: onSave),
              ],
            )
          ],
        ),
      ),
    );
  }
}
