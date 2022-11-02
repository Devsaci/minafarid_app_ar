// 31. Lecture 31 - Creating Base ViewModel
abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  // shared variables and function that will be used through any view model.
//  Lecture 100 - Adding Input Stream Controller Inside Base ViewModel #88

}

abstract class BaseViewModelInputs {
  void start(); // start view model job
  void dispose(); // will be called when view model dies
}

//32. Lecture 32 - Creating Onboarding Screen ViewModel
abstract class BaseViewModelOutputs {
  // will be implemented later
}
