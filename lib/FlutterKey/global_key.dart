import 'package:flutter/material.dart';

/// 1-> Accessing the state of the widget across the widget tree.
/// 3-> Form validation
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Global Key',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'Enter text'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Text';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _clearText,
              child: const Text(
                'Clear Text',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _validateForm,
              child: const Text('Submit',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _navigatingToSecond,
              child: const Text(
                'Push',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _clearText() {
    _textController.clear();
  }

  void _navigatingToSecond() =>
      Navigator.of(context).pushNamed('/secondScreen');

  void _validateForm() {
    if (_formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form is valid!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form is invalid!')),
      );
    }
  }
}

/// 2-> Navigating to the second screen and it should displayed
/// the updated ui based on certain conditions.
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Scroll to a specific position when the page loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(10.0); // Scroll to offset 10.0
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Second Page')),
        body: ListView(
          controller: _scrollController,
          children: List.generate(
              100,
              (index) => ListTile(
                      title: Text(
                    'Item $index',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ))),
        ));
  }
}
