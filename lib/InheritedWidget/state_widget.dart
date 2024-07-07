import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/InheritedWidget/Models/core_state.dart';

class StateWidget extends StatefulWidget {
  final Widget child;

  const StateWidget({super.key, required this.child});

  @override
  State<StateWidget> createState() => StateWidgetState();
}

class StateWidgetState extends State<StateWidget> {
  CoreState state =  CoreState();

  void incrementCounter() {
    final counter = state.counter + 1;
    final newState = state.copy(counter: counter);

    setState(() => state = newState);
  }

  void setColor(Color bgColor) {
    final newState = state.copy(bgColor: bgColor);
    setState(() => state = newState);
  }

  void setCounter(int counter) {
    final newState = state.copy(counter: counter);
    setState(() => state = newState);
  }

  @override
  Widget build(BuildContext context) {
    return StateInheritedClass(
        state: state, stateWidget: this, child: widget.child);
  }
}

class StateInheritedClass extends InheritedWidget {
  final CoreState state;
  final StateWidgetState stateWidget;

  const StateInheritedClass(
      {super.key,
      required super.child,
      required this.state,
      required this.stateWidget});

  static StateWidgetState? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<StateInheritedClass>()?.stateWidget;

  @override
  bool updateShouldNotify(StateInheritedClass oldWidget) =>
      oldWidget.state != state;
}
