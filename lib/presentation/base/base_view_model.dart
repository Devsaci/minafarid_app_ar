// 31. Lecture 31 - Creating Base ViewModel
import 'dart:async';

import 'package:minafarid_app_ar/presentation/common/state_renderer/state_renderer_impl.dart';

abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  // shared variables and function that will be used through any view model.
//  Lecture 100 - Adding Input Stream Controller Inside Base ViewModel #88
  final StreamController _inputStreamController =
      StreamController<FlowState>.broadcast();

  @override
  // TODO: implement inputState
  Sink get inputState => throw UnimplementedError();

  @override
  void dispose() {
    _inputStreamController.close();
  }
}

abstract class BaseViewModelInputs {
  void start(); // start view model job
  void dispose(); // will be called when view model dies
  Sink get inputState;
}

//32. Lecture 32 - Creating Onboarding Screen ViewModel
abstract class BaseViewModelOutputs {
  // will be implemented later
  Stream<FlowState> get outputState;
}
