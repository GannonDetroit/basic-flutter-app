import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //this final tells dart that the data will not change after the widgets initialization (which makes sense because this is a stateless widget)
  //do not let this confuse you because we know the question text will change, however it will change from an outside source, the main.dart file
  //so this entire widget will rerender when that happens, which is the reason we split it out of the code from main.dart, to help improve efficiency (technically)

  final String questionText;

  //constructor, when this changes the whole widget will rerender/build.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
