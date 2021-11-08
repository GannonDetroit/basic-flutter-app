import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  //runApp is a function from material.dart that runs your app by drawing up the widget tree. don't forget to invoke with ().
  runApp(MyApp());
}

//an alternative way to do the main() function is this:
// void main() => runApp(MyApp());      | this is just for functions that have only 1 expression, just a shorthand way of doing it.

// all classes need to be stateful or stateless (like old react components) and run the build method.
class MyApp extends StatefulWidget {
  //the reason a stateful widget has these two classes is because of the rerender effect from outside data via the widget constructor. normally everything would be reset
  //but with a stateful widget we can allow local widget state to persist and not be overwritten, which is a major point/reason you would want a
  //stateful widget to begin with, so only widget internal effects affect the state, if it was just external then a stateless widget would suffice.
  @override
  State<MyApp> createState() => _MyAppState();
}

//the _ makes this class a private property/class, meaning it can only be used the MyApp class. This helps prevent bugs by not allowing other classes or files
//to access this class, the _ can be applied to functions and variables too. Note: its accessible in child widgets apparently though still.
class _MyAppState extends State<MyApp> {
  // best practice is to keep all data/variable/functions inside the class so its a standalone class.
  var _questionIndex = 0;

  // if you hover over questions you see List<Map<String, Object> thats because question is a list of a maps that contain strings and mixed data. in this case another list full of strings. but since thats a bit much it will default to the parent title of just Object since 'everything is an object'.
  final questions = const [
    //this is an array of objects in javascript but in flutter its a list of maps.
    {
      'questionText': 'Who\'s your favorite waifu?',
      'answers': ['Asuna', 'Holo', 'Esdeath', 'Zero Two'],
    },
    {
      'questionText': 'Who\'s your favorite husbando?',
      'answers': ['Soma', 'Deku', 'Sasuka', 'Dio']
    },
    {
      'questionText': 'What is your favorite Shonen?',
      'answers': ['Naruto', 'One Piece', 'Bleach', 'My Hero Academia']
    }
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // if (_questionIndex < questions.length){

    // }
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
          //example of use of trenary expression in UI.
          body: _questionIndex < questions.length
              ? Quiz(
                  //using named functions just for exercise.
                  answerQuestion: answerQuestion,
                  questionIndex: _questionIndex,
                  questions: questions,
                )
              : Result()),
    );
  }
}
