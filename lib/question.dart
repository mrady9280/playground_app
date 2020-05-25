import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  double margin;
  Question(questionText) {
    this.margin = 10;
    this.questionText = questionText;
  }
  Question.withMargin(String questionText, double margin) {
    this.margin = margin;
    this.questionText = questionText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(margin),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
