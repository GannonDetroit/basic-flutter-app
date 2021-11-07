//a function that specifies the data types of its return and its parameters.
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

//a class with various data types, this is intitiated but can of course just be blank and given a name/age when a new object is created from this class.
class Person {
  String name = 'Darcy';
  int age = 20;
  var role;
}

//void is a type that show it returns 'nothing' it just runs code, in main.dart a main() is a reserved word that runs the entire application
//inside is an example of how to create a new object from a class and access specific data from that object, 'everything' is an object in dart.
// if you have the data type specified in a function then just use var as the type, like we used for result variable below.
void main() {
  var person1 = Person();
  print(person1);
  print(person1.age);
  var result = addNumbers(1, 5);
  print(result);
}
