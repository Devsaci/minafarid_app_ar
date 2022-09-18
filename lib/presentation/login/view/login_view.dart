import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/resources/color_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/values_manager.dart';

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
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  _bind() {
    _viewModel.start(); // tell viewmodel, start ur job
    _userNameController
        .addListener(() => _viewModel.setUserName(_userNameController.text));
    _userPasswordController.addListener(
        () => _viewModel.setPassword(_userPasswordController.text));
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

// Lecture 73 - Login View UI #64
  Widget _getContentWidget() {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: AppPadding.p100),
        color: ColorManager.white,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
