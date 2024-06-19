import 'package:flutter/material.dart';

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

class InterfaceClass extends StatefulWidget {
  const InterfaceClass({super.key});

  @override
  State<InterfaceClass> createState() => _InterfaceClassState();
}

class _InterfaceClassState extends State<InterfaceClass> {
  @override
  void initState() {
    Cow c = Cow();
    debugPrint("Cow has ${c.eye} eyes.");
    c.walk();
    c.sleep();
    c.reproduction();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
