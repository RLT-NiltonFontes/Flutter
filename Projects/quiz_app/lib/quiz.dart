import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int answerIndex;
  final Function nextQuestion;

  Quiz({this.questions, this.answerIndex, this.nextQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[answerIndex]['question']),
        ...(questions[answerIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(answer['text'],() => nextQuestion(answer['score']));
        }).toList(),
      ],
    );
  }
}
