import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/Equtable/equtable.dart';

/*
Key Differences: Normal create instance vs Singleton instance
---------------------------------------------------------------------------------
Object Creation:
Normal Instance: A new instance is created every time the constructor is called.
Singleton Instance: The instance is created only once, and any further calls return the same instance.
Memory Usage:

Normal Instance: Each object occupies its own memory, so multiple instances may consume more memory.
Singleton Instance: Only one instance exists in memory, making it more memory efficient.
State:

Normal Instance: Each instance has its own state, meaning you can have different values for different instances.
Singleton Instance: All references to the Singleton class share the same state.
Access:

Normal Instance: Each instance is independent, and accessing it requires creating a new object.
Singleton Instance: The same instance can be accessed from anywhere in the application, providing a global point of access.
 */
/// Normal Instance
class A{
  String msg;
  A({required this.msg});

  void printMsg(){
    debugPrint(msg);
  }
}

/// Singleton Instance
class B{
  String? msg;
  B._internal(this.msg);

  static final B _instance = B._internal('Hello');

  factory B(){
    return _instance;
  }

  void printMsg(){
    debugPrint(msg);
  }
}

class Person{
  int? age;
  String? name;
  Person(this.name, this.age);

  static Person? person;

  factory Person.p1(){
    person = Person('Kevin', 25);
    return person!;
  }

  void info(){
    debugPrint('Name: $name & Age: $age');
  }
}


void main(){
  /*var a = A(msg: 'Hello');
  var b = A(msg: 'Hello');
  a.printMsg();
  b.printMsg();*/

  var a = B();
  var b = B();
  if(a==b){
    debugPrint("true");
  }else{
    debugPrint("false");
  }

  var p1 = Person.p1();
  p1.info();
}