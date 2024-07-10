import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text('Routing App',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: const Text('Go to second'),
              onPressed: () {
                /*Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondPage(
                          data: "Hello there from the first page!",
                        )));*/
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: 'Hello there from the first page!',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
