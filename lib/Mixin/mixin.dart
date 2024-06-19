import 'package:flutter/cupertino.dart';

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

class MixInClass extends StatefulWidget {
  const MixInClass({super.key});

  @override
  State<MixInClass> createState() => _MixInClassState();
}

class _MixInClassState extends State<MixInClass> {
  @override
  void initState() {
    Dog dog = Dog();
    dog.eat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
