import 'package:flutter/material.dart';

class BtnsUpdated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          // instade of raised btn
          onPressed: () => print("Elevated BTN"),
          child: Text("Elevated BTN"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
        ),
        TextButton(
          // instade of flat btn
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          onPressed: () => print("Text BTN"),
          child: Text("Text BTN"),
        ),
        OutlinedButton(
          onPressed: () => print("Outlined BTN"),
          child: Text("Outlined BTN"),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            side: BorderSide(color: Colors.black),
          ),
        )
      ]),
    );
  }
}
