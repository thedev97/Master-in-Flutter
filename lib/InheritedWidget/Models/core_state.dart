import 'package:flutter/material.dart';

class CoreState {
  final int counter;
  final Color bgColor;

  CoreState({this.counter = 0, this.bgColor = Colors.white});

  CoreState copy({int? counter, Color? bgColor}) => CoreState(
      counter: counter ?? this.counter, bgColor: bgColor ?? this.bgColor);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoreState &&
          runtimeType == other.runtimeType &&
          counter == other.counter &&
          bgColor == other.bgColor;

  @override
  int get hashCode => counter.hashCode ^ bgColor.hashCode;
}
