import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  int appState = 0;

  // named constructor
  MyApp.internal();

  static final MyApp _instance = MyApp.internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//class test
class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  //method updateAppState
  void updateAppState() {
    MyApp().appState = 11;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
