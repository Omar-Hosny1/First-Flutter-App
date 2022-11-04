import 'dart:ffi';

import 'package:flutter/material.dart';

class Person {
  String name;
  int age;
  Char gender;
  Person({String name, int age, this.gender}) {
    // this.gender => // named args
    this.name = name;
    this.age = age;
  }
}

void main() {
  // var p1 = Person(name: "Omar");

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // StatelessWidget => A class to create your own widgets
  int questionIndex = 0;
  var questions = [
    'What\'s your favorite color ?',
    'What\'s your favorite movie ?'
  ];

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // MaterialApp => it returns a compination of widgets into a real app
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(children: [
        Text(questions[questionIndex]),
        ElevatedButton(
          onPressed: answerQuestion,
          child: Text("Answer 1"),
        ),
        ElevatedButton(
          onPressed: () => print("Answered 2"),
          child: Text("Answer 2"),
        ),
        ElevatedButton(
          onPressed: () {
            print("Answered 3");
          },
          child: Text("Answer 3"),
        ),
      ]),
    ) // Scaffold => creates a base page design,
        );
  }
}
