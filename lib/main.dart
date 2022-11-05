// import 'dart:ffi';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  // var p1 = Person(name: "Omar");

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // _class name => it makes it private and accessable in this class only
  // StatelessWidget => A class to create your own widgets
  int _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite car?',
      'answers': [
        {'text': 'BMW', 'score': 10},
        {'text': 'Kia', 'score': 5},
        {'text': 'Urus', 'score': 7},
        {'text': 'Ferrari', 'score': 8},
      ],
    },
  ];

  int _totalScore = 0;

  void onResetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    // MaterialApp => it returns a compination of widgets into a real app
    return MaterialApp(
      home: Scaffold(
        // Scaffold => creates a base page design,
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _answerQuestion,
                _questionIndex,
              )
            : Result(_totalScore, onResetQuiz),
      ),
    );
  }
}
