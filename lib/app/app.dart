import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/resources/routes_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp.internal();

  int appState = 0;

  // named constructor

  static final MyApp _instance =
      MyApp.internal(); // singleton or single instance

  factory MyApp() => _instance; // singleton or single instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     //20. Lecture 20 - Start Splash Screen20. Lecture 20 - Start Splash Screen
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
