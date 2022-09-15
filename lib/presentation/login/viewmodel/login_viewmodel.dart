//67. Lecture 67 - Adding Login Viewmodel

import 'dart:async';

import 'package:minafarid_app_ar/presentation/base/base_view_model.dart';

import '../../../domain/usecase/login_usecase.dart';
import '../../common/freezed_data_classes.dart';

class LoginViewModel extends BaseViewModel
    with LoginViewModelInputs, LoginViewModelOutputs {
  //Lecture 68 - Adding Streams to Login ViewModel #59
  final StreamController _userNameStreamController =
      StreamController<String>.broadcast();
  final StreamController _passwordStreamController =
      StreamController<String>.broadcast();

  var loginObject = LoginObject("", "");

  //Lecture 71 - Adding Login UseCase to Login ViewModel #62
  final LoginUseCase _loginUseCase;

  LoginViewModel(this._loginUseCase);

  // inputs

  @override
  void dispose() {
    _userNameStreamController.close();
    _passwordStreamController.close();
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  Sink get inputPassword => _passwordStreamController.sink;

  @override
  Sink get inputUserName => _userNameStreamController.sink;

  @override
  setPassword(String password) {
    inputPassword.add(password);
    //Lecture 70 - Usage of Data Classes #61
    loginObject = loginObject.copyWith(password: password);
  }

  @override
  setUserName(String userName) {
    inputUserName.add(userName);
    loginObject = loginObject.copyWith(userName: userName);
  }

  @override
  login() async {
    (await _loginUseCase.execute(
            LoginUseCaseInput(loginObject.userName, loginObject.password)))
        .fold(
            (left) => {
                  // left -> failure
                },
            (data) => {
                  // right -> data success
                });
  }

  // outputs
  @override
  Stream<bool> get outIsPasswordValid => _passwordStreamController.stream
      .map((password) => _isPasswordValid(password));

  bool _isPasswordValid(String password) {
    return password.isNotEmpty;
  }

  @override
  Stream<bool> get outIsUserNameValid => _userNameStreamController.stream
      .map((username) => _isUserNameValid(username));

  bool _isUserNameValid(String username) {
    return username.isNotEmpty;
  }
}

abstract class LoginViewModelInputs {
  setPassword(String password);

  setUserName(String userName);

  login();

  Sink get inputUserName;

  Sink get inputPassword;
}

abstract class LoginViewModelOutputs {
  Stream<bool> get outIsUserNameValid;

  Stream<bool> get outIsPasswordValid;
}
