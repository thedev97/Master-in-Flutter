import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

void main() {
  var p1 = const Person(name: "Smith", age: 25);
  var p2 = const Person(name: "Maxwell", age: 25);

  if (p1 == p2) {
    debugPrint("True");
  } else {
    debugPrint("False");
  }
}

class Person extends Equatable {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
