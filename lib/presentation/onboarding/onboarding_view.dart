import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../resources/color_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.grey2,
      body: const Center(child: Text("Welcome to on boarding")),
    );
  }
}

//23. Lecture 23 - Implementation Onboarding Screen Part1

