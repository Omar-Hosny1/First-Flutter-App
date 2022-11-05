import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  String text;
  TextApp(@required this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
