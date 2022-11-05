// import 'dart:ffi';
import 'package:first_app/answer.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
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
  List<Map<String, List<String>>> _questions = [
    {
      'QT': ['What\'s your favorite color ?'],
      'answers': ['Black', 'Red', 'White']
    },
    {
      'QT': ['What\'s your favorite movie ?'],
      'answers': ['Lion King', 'Soul', 'John Wick 3']
    },
    {
      'QT': ['What\'s your favorite cat ?'],
      'answers': ['BMW', 'Mercides', 'Hyndai']
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
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
            : Result(),
      ),
    );
  }
}


/*
style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
    ),
*/