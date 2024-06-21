import 'package:flutter/cupertino.dart';

void main(){
  Dog dog = Dog();
  dog.eat();
}

class Dog extends Animal with CanBark {
  void walk() {
    debugPrint("Walking...");
  }
}

class Animal {
  void eat() {
    debugPrint("Eating...");
  }

  void sleep() {
    debugPrint("Sleeping...");
  }
}

mixin CanBark {
  void canBark() {
    debugPrint("Barking...");
  }
}
