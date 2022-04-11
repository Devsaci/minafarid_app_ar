import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/color_manager.dart';

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
    return MaterialApp();
  }
}
