import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_interview_ques/DependencyInjection/app_service.dart';

/// 3ways to registering instances
/// Registering Factory
/// Registering Singleton
/// Registering LazySingleton


final locator = GetIt.instance;

void setup(){
  debugPrint('Setup is called');
  // Singleton
  //locator.registerSingleton<AppService>(AppService());
  // Lazy Singleton
  //locator.registerLazySingleton<AppService>(() => AppService());
  //Factory
  locator.registerFactory<AppService>(() => AppService());
}