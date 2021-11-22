//a function that specifies the data types of its return and its parameters.
// import 'package:flutter/material.dart';

int addNumbers(int num1, int num2) {
  return num1 + num2;
}

//a class with various data types, this is intitiated but can of course just be blank and given a name/age when a new object is created from this class.
class Person {
  String
      name; //if using version 2.12 with Null saftey, you'll need to add late to front of this.
  int age;
  var role;

  // the constructor operates once only when a new object/instance of the class is called.
  // you can add default values by making it int inputAge = 20
  // you can also do @required String inputName to make the compiler yell at you and avoid errors if you need that to be a thing.
  Person(String inputName, int inputAge) {
    name = inputName;
    age = inputAge;
  }

  // a less verbose way (but less customized) of doing this is like this:
  // Person({this.name, this.age});

  // commented out but for noting, there is another stye of making constructors that involve using the this keyword.
  // this.name references the class variable for name, while just name references the constructor variable, but since they are the same word it can
  // be a bit confusing so I like the above method better on a personal level.
  //   Person(String name, int age){
  //   this.name = name;
  //   this.age = age;
  // }

  // a third way to handle constructors is with named arguments by using { } to make the arguments optional. So if you have a class that doesn't
  // require each variable to have a value right a way, this can be helpful for that
  //   Person({String name, int age}){
  //   this.name = name;
  //   this.age = age;
  // }

  // you would just need to add the parameter name and then its value when you call this class to make a new object, so instead of:
  //    var person1 = Person('darcy', 20);
  // you would instead do:
  //  var person1 = Person(inputName: 'darcy', inputAge: 20);
  // you could leave out inputName or age if you didn't need them since its a named argument constructor.

  //this works for any functions, not just constructors.
}

//void is a type that show it returns 'nothing' it just runs code, in main.dart a main() is a reserved word that runs the entire application
//inside is an example of how to create a new object from a class and access specific data from that object, 'everything' is an object in dart.
// if you have the data type specified in a function then just use var as the type, like we used for result variable below.
void main() {
  var person1 = Person('darcy', 20);
  print(person1);
  print(person1.age);
  var result = addNumbers(1, 5);
  print(result);
}

//Stateful vs Statless and rendering
/*
a stateless widget will build/render and if its external input data (so a score/counter/api data update/etc) that comes from the widget's constructor changes the entire widget will rerender and build
BUT if data inside that stateless widget changes, it will NOT rerender. That is when you stateful widget (or have the internal widget data come from an outside widget)

the render is a bit like a virutal dom in react, when a state-driven rerender is triggered it only calls the build method of the widget that has the change and only rerenders the
handful of pixels of the change, not the entire widget worth of pixels. this is part of what makes flutter fast and efficient. 
*/

//trick with if statements:
/*
if (userName = 'gannon' && password = 'password' || age > 20){
  logged in
} else{
  Failed
}

you can group and control those different requirements with ( )
so if you want to make the username required and then either password or age do this:
(userName = 'gannon' && (password = 'password' || age > 20))
etc.

*/

//regarding Null Safety in version 2.12+
/*
Null safety is basically to help with error/bug reduction and saftey as far as I can tell. 
its introduced in version 2.12 and requires some minor changes to avoid things being null when they 'shouldn't be' and is generally not too bad to deal with.
there are examples in this code of what to do to deal with it.

one note, if you want a variable to be able to be null or its normal type, like a variable thats a string as a value do this:
String? username = 'gannon' 
this will allow you to change this variable to null in the future if you so want to and not trip up Null Safety. 

*/


//old flutter buttons vs new flutter buttons
/* 
the nice thing about the new buttons is they automatically adapt your color theme styles so you spend much less time/code styling this buttons
but if you need to style a one off, you use a style: ButtonStyle argument to the ElevatedButton (old way you just put the style name like color)
so this new way is a bit more tedious but shouldn't need to be done as often. 

RaisedButton = ElevatedButton
FlatButton = TextButton
OutlineButton = OutlinedButton

*/

//debugging
/*
run and click with debugger if you need to solve an advance/hard to find issue that just using print statements or general errors are not helping you with.
don't do this all the time because running in debug mode makes the app run much slower and will kill your productivity time.

you can also click control + options D (or command shift P to open the menu to select the Dart DevTools) to open Dart DevTools. This will be like accessing
inspect in browser based apps. This allows you to view UI elements, test performance,  etc. SUPER USEFUL.
-select widget allows you to click the widget you want in the simulator, see its border and get more info on it in the devtools.
-debut paint shows you an overlay with helperlines over every widget in the app for a large scale understand on why your UI looks the way it is. 
-be aware that using performace checking on a simulator is always MUCH worse than how your app would actually run on a device in production so take with a grain of salt. 
-you can also turn off the annoying 'debug' banner in the upper corner too by clicking debug banner button
-repaint rainbow is useful because when you click something in your UI that changes the app, like a button, this feature will highlight with colors around 
everything that changed, so it can be helpful in spotting things that change that you were not aware of and that shouldn't be changing. helping with performace.
  -note that repainting is not always the same as recreating, but repainting still takes more performance that just leaving it alone. 
*/