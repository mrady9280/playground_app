import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionAnswered;
  final String answer;
  Answer(this.questionAnswered, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: questionAnswered,
      ),
    );
  }
}
