import 'package:flutter/cupertino.dart';

class AppService{

  AppService(){
    debugPrint("Service is called");
  }

  String execute(){
    return "Sample Data";
  }
}