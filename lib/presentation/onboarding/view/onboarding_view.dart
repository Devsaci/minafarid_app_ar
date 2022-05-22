import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minafarid_app_ar/presentation/resources/assets_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/routes_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/strings_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/constants_manager.dart';
import '../../resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
        SliderObject(
          AppStrings.onBoardingTitle1,
          AppStrings.onBoardingSubTitle1,
          ImageAssets.onboardingLogo1,
        ),
        SliderObject(
          AppStrings.onBoardingTitle2,
          AppStrings.onBoardingSubTitle2,
          ImageAssets.onboardingLogo2,
        ),
        SliderObject(
          AppStrings.onBoardingTitle3,
          AppStrings.onBoardingSubTitle3,
          ImageAssets.onboardingLogo3,
        ),
        SliderObject(
          AppStrings.onBoardingTitle4,
          AppStrings.onBoardingSubTitle4,
          ImageAssets.onboardingLogo4,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        // 28. Lecture 28 - Implementation Onboarding Screen Part6
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            int _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingPage(_list[index]);
        },
      ),
      bottomSheet: Container(
        // height: AppSize.s100,
        color: ColorManager.white,
        child: Column(
          mainAxisSize:  MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                //27. Lecture 27 - Implementation of Onboarding Screen Part5
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                child:  Text(
                  AppStrings.skip,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            // widgets indicator and arrows
            _getBottomSheetWidget()
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Container(
      color: ColorManager.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // left arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              onTap: () {
                // go to previous slide
                _pageController.animateToPage(
                  _getPreviousIndex(),
                  duration: const Duration(
                      milliseconds: AppConstants.sliderAnimationTime),
                  curve: Curves.bounceInOut,
                );
              },
              child: SizedBox(
                width: AppSize.s20,
                height: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.leftArrowIc),
              ),
            ),
          ),
          // circle indicator
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: _getProperCircle(i)),
            ],
          ),
          // right arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: GestureDetector(
              child: SizedBox(
                  width: AppSize.s20,
                  height: AppSize.s20,
                  child: SvgPicture.asset(
                    ImageAssets.rightArrowIc,
                  )),
              onTap: () {
                // go to previous slide
                _pageController.animateToPage(_getNextIndex(),
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(ImageAssets.hollowCircleIc);
    } else {
      return SvgPicture.asset(ImageAssets.solidCircleIc);
    }
  }

  int _getPreviousIndex() {
    int previousIndex = -- _currentIndex;
    if (previousIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  int _getNextIndex() {
    int nextIndex = ++ _currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }
}

//24. Lecture 24- Implementation Onboarding Screen Part2
class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: AppSize.s60),
        SvgPicture.asset(_sliderObject.image),
        // 25. Lecture 25 - Implementation of Onboarding Screen Part3
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}
