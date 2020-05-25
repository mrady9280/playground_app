import 'package:flutter/material.dart';
import 'package:playground_app/models/questionModel.dart';
import 'package:playground_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final int _questionIndex;
  final Function _questionAnswered;
  final List<QuestionModel> _questions;
  Quiz(this._questionIndex, this._questionAnswered, this._questions);
  @override
  Widget build(BuildContext context) {
    var test = _questions[_questionIndex].answers;
    return Container(
      child: Column(
        children: <Widget>[
          Question(_questions[_questionIndex].questionText),
          ..._questions[_questionIndex]
              .answers
              .map((answer) =>
                  Answer(() => _questionAnswered(answer.score), answer.text))
              .toList()
        ],
      ),
    );
  }
}
