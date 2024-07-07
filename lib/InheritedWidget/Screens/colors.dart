import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/InheritedWidget/state_widget.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'Select Color',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 20),
          _buildColorButton(context, Colors.white),
          const SizedBox(width: 20),
          _buildColorButton(context, Colors.black),
          const SizedBox(width: 20),
          _buildColorButton(context, Colors.red)
        ],
      ),
    );
  }

  Widget _buildColorButton(BuildContext ctx, Color color) => GestureDetector(
    onTap: () => setColor(color),
    child: Container(
      height: 100,width: 100,
        margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.grey)),
    ),
  );

  void setColor(Color color){
    final colors = StateInheritedClass.of(context);
    colors?.setColor(color);
    Navigator.pop(context);
  }
}
