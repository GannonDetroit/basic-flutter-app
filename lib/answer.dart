import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //VoidCallback is a more precise Type compared to the more general Function type
  final VoidCallback selectHandler;

  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          // ^did this as demo for myself but one of the advantages of ElevatedButton over RaisedButton is that it will actually pick up your main theme color by default. So you don't even need to add that custom blue background color - since our main theme uses Colors.blue as a primarySwatch, the ElevatedButton will assume a blue background color out of the box
          // an alternative way to style this is: style: ElevatedButton.styleFrom(primary: Colors.blue, onPrimary: Colors.white) primary is background and onPrimary is text color.
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
