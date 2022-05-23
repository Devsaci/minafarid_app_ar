//32. Lecture 32 - Creating Onboarding Screen ViewModel
import 'dart:async';

import 'package:minafarid_app_ar/presentation/base/base_view_model.dart';

import '../../../domain/models.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // stream controllers outputs
  StreamController _streamController = StreamController<SliderViewObject>();

  //OnBoarding ViewModel Inputs
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }
}

// inputs mean that "Orders" that our view model will receive from view
abstract class OnBoardingViewModelInputs {
  void goNext(); // when user clicks on right arrow or swipe left
  void goPrevious(); // when user clicks on left arrow or swipe right
  void onPageChanged(int index);

  // stream controller input;
  Sink? inputSliderViewObject;
}

abstract class OnBoardingViewModelOutputs {}
