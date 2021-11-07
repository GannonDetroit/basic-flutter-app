import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  //runApp is a function from material.dart that runs your app by drawing up the widget tree. don't forget to invoke with ().
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //build is a special object type provided by flutter via material.dart that is needed for flutter to work in the background properly.
  Widget build(BuildContext context) {
    //Material App is a widget provided by material.dart that does osme base setup that helps with some heavy lifting behind the scences too.
    // home is the core widget that flutter brings to the screen with the app is rendered.
    return MaterialApp(home: Text('Hello Gannon'));
  }
}
