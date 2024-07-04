// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/Streams/my_stream.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_interview_ques/main.dart';

void main() {
  group('I want to test the main.dart file', () {
    testWidgets("I want to check material app", (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets("I want to check the stream class",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MyStreamClass(),
      ));
      expect(find.text("Done"), findsOneWidget);
    });
  });
}
