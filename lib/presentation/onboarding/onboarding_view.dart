import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/resources/assets_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/strings_manager.dart';
import '../resources/color_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();

  List<SliderObject> _getSliderData() => [
        SliderObject(
          AppStrings.onBoardingSubTitle1,
          AppStrings.onBoardingSubTitle1,
          ImageAssets.onboardingLogo1,
        ),
        SliderObject(
          AppStrings.onBoardingSubTitle2,
          AppStrings.onBoardingSubTitle2,
          ImageAssets.onboardingLogo2,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.grey2,
      body: const Center(child: Text("Welcome to on boarding")),
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}
