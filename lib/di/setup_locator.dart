import 'package:get_it/get_it.dart';
import 'package:navigator/view_models/SecondViewModel.dart';

import '../services/NavigationService.dart';
import '../view_models/HomeViewModel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerFactory(() => HomeViewModel());
  getIt.registerFactory(() => SecondViewModel());
}
