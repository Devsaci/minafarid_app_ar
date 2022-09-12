//67. Lecture 67 - Adding Login Viewmodel

import 'package:minafarid_app_ar/presentation/base/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }
}

abstract class LoginViewModelInputs {
  setUserName(String userName);

  setPassword(String password);

  login();

  Sink get inputUserName;

  Sink get inputPassword;

  Stream<bool> get outIsUserNameValid;

  Stream<bool> get outIsPasswordValid;
}

abstract class LoginViewModelOutputs {}
