import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/DependencyInjection/injection_container.dart';
import 'package:flutter_interview_ques/Streams/my_stream.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyStreamClass(),
    );
  }
}
