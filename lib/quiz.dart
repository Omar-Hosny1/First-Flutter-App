import 'package:flutter/material.dart';
import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final List<Map<String, List<String>>> questions;
  final int questionIndex;

  Quiz(@required this.questions, @required this.answerQuestion,
      @required this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(QuestionText: questions[questionIndex]['QT'][0]),
      ...(questions[questionIndex]['answers']).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ]);
  }
}
