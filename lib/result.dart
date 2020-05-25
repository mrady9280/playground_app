import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int _totalScore;
  Result(this.resetQuiz, this._totalScore);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Well Done !!!' + ' YOUR SCORE IS : ' + _totalScore.toString(),
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text('Restart Quiz ?'),
        )
      ],
    );
  }
}
