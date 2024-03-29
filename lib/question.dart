import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //this final tells dart that the data will not change after the widgets initialization (which makes sense because this is a stateless widget)
  //do not let this confuse you because we know the question text will change, however it will change from an outside source, the main.dart file
  //so this entire widget will rerender when that happens, which is the reason we split it out of the code from main.dart, to help improve efficiency (technically)
  // essentially final is a const that is only const after a widget is initalized and rendered, but not const before that happens, which is how/why this can be dynamic with different questions.
  final String questionText;

  //constructor, when this changes the whole widget will rerender/build.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, //this width means the container takes as much size/width as it can possibly allow.
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
