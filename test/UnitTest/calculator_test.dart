import 'package:flutter_interview_ques/FlutterTest/UnitTest/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  Calculator? cal;

  setUpAll(() {
    cal = Calculator();
  });

  group('I want to check my calculator', () {
    test('Test the add functionality', () {
      int result = cal!.add(3, 5);
      expect(result, 8);
    });

    test('Test the sub functionality', () {
      int result = cal!.sub(8, 5);
      expect(result, 3);
    });
  });
}