import 'package:playground_app/models/answerModel.dart';

class QuestionModel {
  String questionText;
  List<AnswerModel> answers;
  QuestionModel(this.questionText, this.answers);
}
