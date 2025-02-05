import 'package:flutter/cupertino.dart';

class AppService{

  AppService(){
    debugPrint('App Service Initialized');
  }

  String execute(){
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year,  now.month, now.day,);
    return 'Date: ${date.toString()}';
  }
}