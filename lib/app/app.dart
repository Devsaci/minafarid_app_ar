import 'dart:html';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  int appState = 0;

  // named constructor
  MyApp.internal();

  static final MyApp _instance =
      MyApp.internal(); // singleton or single instance

  factory MyApp() => _instance; // singleton or single instance

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
    MyApp().appState = 11; // singleton or single instance
  }

  void getAppState() {
    print('/////////////${MyApp().appState}////////////////////');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('/////////////${MyApp().appState}////////////////////'));
  }
}

class test33 extends StatelessWidget {
  const test33({Key? key}) : super(key: key);

  //method updateAppState
  void updateAppState() {
    MyApp().appState; // singleton or single instance
  }

  void getAppState() {
    print('/////////////${MyApp().appState}////////////////////');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('/////////////${MyApp().appState}////////////////////'));
  }
}
