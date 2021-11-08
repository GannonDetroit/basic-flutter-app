//a function that specifies the data types of its return and its parameters.
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

//a class with various data types, this is intitiated but can of course just be blank and given a name/age when a new object is created from this class.
class Person {
  String name;
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
*/