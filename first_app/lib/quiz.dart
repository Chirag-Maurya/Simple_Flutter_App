// ignore_for_file: use_key_in_widget_constructors

import 'package:first_app/question.dart';
import 'package:first_app/answer.dart';

import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    @required this.questions, 
    @required this.answerQuestion, 
    @required this.questionIndex,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
