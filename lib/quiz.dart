import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answer;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answer,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>).map((e) {
          return Answer(answer, e);
        }).toList()
      ],
    );
  }
}
