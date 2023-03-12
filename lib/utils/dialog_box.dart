import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:to_do_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              maxLines: 3,
              minLines: 1,
              controller: controller,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  hintText: "Tambahkan task baru"),
            ),

            // buttons -> save + cancel
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // save button
                  MyButton(
                    onPressed: onSave,
                    text: "Simpan",
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  // cancel button
                  MyButton(
                    onPressed: onCancel,
                    text: "Batal",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
