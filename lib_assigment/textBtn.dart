import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback onChangeText;
  TextControl(this.onChangeText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onChangeText,
      child: Text("Change Text!"),
    );
  }
}
