import 'package:flutter/cupertino.dart';

class Person {
  int age = 0;
  String? name;
  static Person? person1;

  Person(this.age, this.name);

  factory Person.p1() {
    if (person1 == null) {
      person1 = Person(15, "Soumya");
    }
    return person1!;
  }
}

void main() {
  var p1 = Person.p1();
  debugPrint(p1.name);
}
