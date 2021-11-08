import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  //you can see waht these types are from main.dart by hovering over the variable there.
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

//chosing to make this a named parameters just for pracitce and making them required too. if there was an error.. remove the @ and just do required.
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //didn't give me an error but if it did, doing: questions[_questionIndex]['questionText'] as String : will fix it, this is due to Null Safety from Dart 2.12
        Question(questions[questionIndex]['questionText']),
        //the spread operator ... is used so I don't have this list in a list, but instead of the values of the list to a list, avoids nesting lists and errors that flutter would throw if I did that.
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
