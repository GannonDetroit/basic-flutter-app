import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetState;

  Result(this.resultScore, this.resetState);

  //this is a getter, its like a mix of a property and a method.
  //its like a  method because it can be used to calculate things dynmaically, but it cannot receive any arguments/paramenters.
  //its like a variable because you use the calculated result like you would any other variable, like we are doing here for the resultPhrase.
  String get resultPhrase {
    var resultText = 'Quiz Complete'; //default answer
    if (resultScore <= 15) {
      resultText = 'You Are a True Degenerate :)';
    } else {
      resultText = 'You Are a Truly Wholesome Weeb :)';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetState, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
