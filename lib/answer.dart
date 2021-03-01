import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(
    this.selectHandler,
    this.answerText
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25,0,25,0),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
