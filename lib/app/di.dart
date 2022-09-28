//Lecture 79 - Add dependency injection Instances #7
import 'package:get_it/get_it.dart';
import 'package:minafarid_app_ar/app/app_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  // app module, its a module where we put all generic dependencies

  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  // app prefs instance
  instance.registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
}

Future<void> initLoginModule() async {}
