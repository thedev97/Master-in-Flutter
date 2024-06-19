import 'package:flutter/material.dart';

class MySingleton{
  static final MySingleton _singleton = MySingleton._internal();

  factory MySingleton() {
    return _singleton;
  }

  MySingleton._internal();
}

class GlobalData extends StatefulWidget {
  const GlobalData({super.key});

  @override
  State<GlobalData> createState() => _GlobalDataState();
}

class _GlobalDataState extends State<GlobalData> {

  @override
  void initState() {
    globalData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void globalData() {
    MySingleton a = MySingleton();
    MySingleton b = MySingleton();
    if(a==b){
      debugPrint("true");
    }else{
      debugPrint("false");
    }
  }
}
