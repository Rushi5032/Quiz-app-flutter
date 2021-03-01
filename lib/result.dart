import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;

  Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'No more questions!!!',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text('Restart Quiz'),
          textColor: Colors.blueAccent,
        )
      ],
    ));
  }
}
