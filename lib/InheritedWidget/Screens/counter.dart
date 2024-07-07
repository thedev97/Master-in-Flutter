import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/InheritedWidget/state_widget.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'Counter',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 48),
              child: buildTextField(onSubmitted: setCounter),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
                onPressed: () => setCounter(controller.text),
                child: const Text('Update Counter',
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
                onPressed: increment,
                child: const Text('Increment Counter',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)))
          ],
        ),
      ),
    );
  }

  Widget buildTextField({
    required ValueChanged<String> onSubmitted,
  }) =>
      TextField(
        controller: controller,
        style: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 16),
        cursorColor: Colors.blue,
        keyboardType: TextInputType.number,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: 'Counter',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Colors.blue,width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Colors.blue,width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Colors.blue,width: 2),
          ),
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      );

  void increment() {
    final counter = StateInheritedClass.of(context);
    counter?.incrementCounter();
    Navigator.pop(context);
  }

  void setCounter(String value) {
    try {
      final val = int.tryParse(value);
      final counter = StateInheritedClass.of(context);
      counter?.setCounter(val!);
      Navigator.pop(context);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
