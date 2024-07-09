import 'package:flutter/cupertino.dart';

void main() {
  Dog dog = Dog();
  dog.eat();

  Manimal manimal = Manimal();
  manimal.eat();

  C c = C();
  c.fooA();
  c.fooB();
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

mixin MixinA {
  void eat() {
    debugPrint("MixinA: Eating...");
  }
}

mixin MixinB {
  void eat() {
    debugPrint("MixinB: Eating...");
  }
}

class Manimal with MixinA, MixinB {}

mixin A {
  void fooA() {
    debugPrint("A's fooA");
  }
}

mixin B {
  void fooB() {
    debugPrint("B's fooB");
  }
}

class C with A, B {}
