import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String
      AnswerText; // final means that it will not change after the first declaration (constructor);

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
