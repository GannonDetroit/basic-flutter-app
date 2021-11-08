import 'package:flutter/material.dart';

void main() {
  //runApp is a function from material.dart that runs your app by drawing up the widget tree. don't forget to invoke with ().
  runApp(MyApp());
}

//an alternative way to do the main() function is this:
// void main() => runApp(MyApp());      | this is just for functions that have only 1 expression, just a shorthand way of doing it.

// all classes need to be stateful or stateless (like old react components) and run the build method.
class MyApp extends StatefulWidget {
  //the reason a stateful widget has these two classes is because of the rerender effect from outside data. normally everything would be reset
  //but with a stateful widget we can allow local widget state to persist and not be overwritten, which is a major point/reason you would want a
  //stateful widget to begin with, so only widget internal effects affect the state, if it was just external then a stateless widget would suffice.
  @override
  State<MyApp> createState() => _MyAppState();
}

//
class _MyAppState extends State<MyApp> {
  // best practice is to keep all data/variable/functions inside the class so its a standalone class.
  var questionIndex = 0;

  var questions = [
    'Who\'s your favorite waifu',
    'Who\'s your favorite husbando',
    'What is your favorite Shonen'
  ];

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  //build is a special object type provided by flutter via material.dart that is needed for flutter to work in the background properly.
  Widget build(BuildContext context) {
    //Material App is a widget (a class really) provided by material.dart that does osme base setup that helps with some heavy lifting behind the scences too.
    // home is the core widget that flutter brings to the screen with the app is rendered.
    // use the Scaffold widget because it gives a basic design/structure/color scheme to help start.
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First Title'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text(
                      'Answer 1')), //notice you don't invoke the answerQuestion function. This is like React, if you do it will run when rendered instead of when clicked.
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 2')),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 3')),
              ElevatedButton(
                  onPressed: () => answerQuestion(),
                  child: Text(
                      'Answer 4')), //an example of using an anon function, even though i'm using a named function.
            ],
          )),
    );
  }
}
