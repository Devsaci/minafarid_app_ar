import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/resources/assets_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  //21. Lecture 21 - Adding Timer to Splash Screen
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), (){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body:
          const Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }
}
