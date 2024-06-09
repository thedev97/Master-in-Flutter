import 'package:get_it/get_it.dart';
import 'package:flutter_interview_ques/DependencyInjection/app_service.dart';

/// 3ways to registering instances
/// Registering Factory
/// Registering Singleton
/// Registering LazySingleton


final locator = GetIt.instance;

void setup(){
  //locator.registerSingleton<AppService>(AppService());
  //locator.registerLazySingleton<AppService>(() => AppService());
  locator.registerFactory<AppService>(() => AppService());
}