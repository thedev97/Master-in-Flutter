import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/Routing/Screens/first.dart';
import 'package:flutter_interview_ques/Routing/Screens/second.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(data: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text('Routing App',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ),
        body: const Center(
          child: Text(
            'Error',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.w500, fontSize: 35),
          ),
        ),
      );
    });
  }
}
