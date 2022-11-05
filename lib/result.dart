import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback onReset;
  Result(this.resultScore, this.onReset);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          children: [
            Text(
              'Your Score is : ' + resultScore.toString(),
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: Text("Restart Quiz"),
              onPressed: onReset,
            )
          ],
        ),
      ),
    );
  }
}
