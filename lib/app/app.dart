import 'dart:html';

import 'package:flutter/cupertino.dart';
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
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.yellow,
      ),
    );
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
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: Text(
          '//////testgreen///////${MyApp().appState}//////////testgreen//////////'),
    );
  }
}

class test33 extends StatelessWidget {
  const test33({Key? key}) : super(key: key);

  //method updateAppState
  void updateAppState() {
    MyApp().appState =33; // singleton or single instance
  }

  void getAppState() {
    print('/////////////${MyApp().appState}////////////////////');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Text(
          '//////test33red///////${MyApp().appState}//////////test33red//////////'),
    );
  }
}
