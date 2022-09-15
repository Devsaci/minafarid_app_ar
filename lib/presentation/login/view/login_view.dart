import 'package:flutter/material.dart';

import '../viewmodel/login_viewmodel.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
// Lecture 72 - Adding Login UseCase to Login ViewModel #63
// - Binding Login ViewModel to Login View
   late final LoginViewModel _viewModel;
   // final LoginViewModel _viewModel = LoginViewModel(_loginUseCase);
   // ERROR : _loginUseCase Solution Injection dependence

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
