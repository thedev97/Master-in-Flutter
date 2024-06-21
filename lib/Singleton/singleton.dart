import 'package:flutter/material.dart';

void main(){
  MySingleton a = MySingleton();
  MySingleton b = MySingleton();
  if(a==b){
    debugPrint("true");
  }else{
    debugPrint("false");
  }
}

class MySingleton{
  static final MySingleton _singleton = MySingleton._internal();

  factory MySingleton() {
    return _singleton;
  }

  MySingleton._internal();
}