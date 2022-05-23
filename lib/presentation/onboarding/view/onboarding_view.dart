import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minafarid_app_ar/presentation/onboarding/viewmodel/onboarding_view_model.dart';
import 'package:minafarid_app_ar/presentation/resources/assets_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/routes_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/strings_manager.dart';
import '../../../domain/models.dart';
import '../../resources/color_manager.dart';
import '../../resources/constants_manager.dart';
import '../../resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  final PageController _pageController = PageController();
  final OnBoardingViewModel _viewModel = OnBoardingViewModel();


  _bind() {
    _viewModel.start();
  }
  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 38. Lecture 38 - How to Recive Data in View From Viewmodel?
    return StreamBuilder<SliderViewObject>(
        stream: _viewModel.outputSliderViewObject,
        builder: (context,snapShot){
          return _getContentWidget(snapShot.data);
        });
  }
  Widget _getContentWidget(SliderViewObject? data){
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





  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
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
