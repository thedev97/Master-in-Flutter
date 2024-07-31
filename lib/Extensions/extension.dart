import 'package:flutter/cupertino.dart';

void main(){
  var date = DateTime.now();
  debugPrint(date.myCurrentDate);
}

extension on DateTime {
  get myCurrentDate {
    return "$day/$month/$year";
  }
}
