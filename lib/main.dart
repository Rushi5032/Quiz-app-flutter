import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': ['Black', 'Blue', 'Red', "Green"],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Lion', "Zebra"],
    },
    {
      'questionText': 'What is your favourite Game?',
      'answers': ['Valorant', 'CSGO', 'PUBG', "Memes😁"],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answer() {
    setState(() {
      _questionIndex = (_questionIndex + 1);
    });
    print('answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answer: _answer,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
