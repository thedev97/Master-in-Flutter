import 'package:flutter/material.dart';


void main(){
  Cow c = Cow();
  debugPrint("Cow has ${c.eye} eyes.");
  c.walk();
  c.sleep();
  c.reproduction();
}

abstract class Animal {
  int get eye;
  void walk();
  void sleep();
}

abstract class Manimal {
  void reproduction();
}

class Cow implements Animal, Manimal {
  @override
  int get eye => 2;

  @override
  void sleep() {
    debugPrint("Sleep");
  }

  @override
  void walk() {
    debugPrint("Walk");
  }

  @override
  void reproduction() {
    debugPrint("Reproduction");
  }
}