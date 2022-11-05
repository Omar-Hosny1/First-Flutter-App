import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String AnswerText;

  Answer(this.selectHandler, this.AnswerText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(AnswerText),
        onPressed: selectHandler,
      ),
    );
  }
}
