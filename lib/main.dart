// import 'dart:ffi';
import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';

// class Person {
//   String name;
//   int age;
//   Char gender;
//   Person({String name, int age, this.gender}) {
//     // this.gender => // named args
//     this.name = name;
//     this.age = age;
//   }
// }

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
  var _questions = [
    {
      'QT': 'What\'s your favorite color ?',
      'answers': ['Black', 'Red', 'White']
    },
    {
      'QT': 'What\'s your favorite movie ?',
      'answers': ['Lion King', 'Soul', 'John Wick 3']
    },
    {
      'QT': 'What\'s your favorite cat ?',
      'answers': ['BMW', 'Mercides', 'Hyndai']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
      body: Column(children: [
        Question(QuestionText: _questions[_questionIndex]['QT']),
        ...(_questions[_questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ]),
    ));
  }
}


/*
style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
    ),
*/