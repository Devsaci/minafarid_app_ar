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