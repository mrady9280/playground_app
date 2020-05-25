import 'package:flutter/material.dart';
import 'package:playground_app/models/answerModel.dart';
import 'package:playground_app/models/questionModel.dart';
import 'package:playground_app/quiz.dart';
import 'package:playground_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    QuestionModel('What is your favorit color?', [
      AnswerModel('Wite', 1),
      AnswerModel('Blue', 3),
      AnswerModel('Red', 5),
      AnswerModel('Black', 10)
    ]),
    QuestionModel('What is your favorit Car?', [
      AnswerModel('Fiat', 1),
      AnswerModel('Toyotta', 3),
      AnswerModel('Ford', 5),
      AnswerModel('BMW', 10)
    ]),
    QuestionModel('What is your favorit Type Of Cat?', [
      AnswerModel('Cat', 1),
      AnswerModel('Sheta', 3),
      AnswerModel('Tiger', 5),
      AnswerModel('Lion', 10)
    ]),
  ];

  void _questionAnswered(int score) {
    setState(() {
      _questionIndex =
          _questionIndex < _questions.length ? ++_questionIndex : 0;
      _totalScore += score;
    });
    print('answer 1');
  }

  var _totalScore = 0;
  var _questionIndex = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter Application'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questionIndex, _questionAnswered, _questions)
          : Result(resetQuiz, _totalScore),
    ));
  }
}
