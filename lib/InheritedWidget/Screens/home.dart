import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/InheritedWidget/Screens/colors.dart';
import 'package:flutter_interview_ques/InheritedWidget/Screens/counter.dart';
import 'package:flutter_interview_ques/InheritedWidget/state_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final counter = StateInheritedClass.of(context)?.state.counter;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'InheritedWidget',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ColorPage()));
                },
                child: const Text('Change Color',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500))),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CounterPage()));
                },
                child: const Text('Change Counter',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)))
          ],
        ),
      ),
    );
  }
}
