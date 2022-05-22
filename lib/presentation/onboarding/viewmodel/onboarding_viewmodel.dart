//32. Lecture 32 - Creating Onboarding Screen ViewModel
import 'package:minafarid_app_ar/presentation/base/baseviewmodel.dart';

class OnBoardingViewModel extends BaseViewModel {
  //OnBoarding ViewModel Inputs
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }
}

// inputs mean that "Orders" that our view model will receive from view
abstract class OnBoardingViewModelInputs {
  void goNext(); // when user clicks on right arrow or swipe left
}

abstract class OnBoardingViewModelOutputs {}
