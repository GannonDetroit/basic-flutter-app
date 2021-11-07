import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  //runApp is a function from material.dart that runs your app by drawing up the widget tree. don't forget to invoke with ().
  runApp(MyApp());
}

//an alternative way to do the main() function is this:
// void main() => runApp(MyApp());      | this is just for functions that have only 1 expression, just a shorthand way of doing it.

// all classes need to be stateful or stateless (like old react components) and run the build method.
class MyApp extends StatelessWidget {
  // override is a decorator that is not 'technically' required but helps make code a bit cleaner and clearer by showing I am overriding the build method with my own code. its to help signal to other devs what you're doing.
  @override
  //build is a special object type provided by flutter via material.dart that is needed for flutter to work in the background properly.
  Widget build(BuildContext context) {
    //Material App is a widget (a class really) provided by material.dart that does osme base setup that helps with some heavy lifting behind the scences too.
    // home is the core widget that flutter brings to the screen with the app is rendered.
    return MaterialApp(home: Text('Hello Gannon'));
  }
}
