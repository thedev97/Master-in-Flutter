import 'package:flutter/cupertino.dart';

extension on DateTime {
  get myCurrentDate {
    return "${this.day}/${this.month}/${this.year}";
  }
}

class MyExtensionClass extends StatefulWidget {
  const MyExtensionClass({super.key});

  @override
  State<MyExtensionClass> createState() => _MyExtensionClassState();
}

class _MyExtensionClassState extends State<MyExtensionClass> {
  @override
  void initState() {
    var date = DateTime.now();
    debugPrint(date.myCurrentDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
