import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/resources/color_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/values_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';
import '../viewmodel/login_viewmodel.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
// Lecture 72 - Adding Login UseCase to Login ViewModel #63
// - Binding Login ViewModel to Login View
//   late final LoginViewModel _viewModel;

  final LoginViewModel _viewModel = LoginViewModel();

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
    return _getContentWidget();
  }

// Lecture 73 - Login View UI #64
  Widget _getContentWidget() {
    return Scaffold(
      // Lecture 78 - Adding Forgot Password and Register Texts #69
      backgroundColor: ColorManager.white,
      body: Container(
        padding: const EdgeInsets.only(top: AppPadding.p100),
        color: ColorManager.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Image splashLogo
                const Center(
                    child: Image(image: AssetImage(ImageAssets.splashLogo))),
                // TextField username
                const SizedBox(height: AppSize.s28),
                Padding(
                  padding: const EdgeInsets.only(
                      left: AppPadding.p28, right: AppPadding.p28),
                  child: StreamBuilder<bool>(
                    stream: _viewModel.outIsUserNameValid,
                    builder: (context, snapshot) {
                      return TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _userNameController,
                        decoration: InputDecoration(
                          hintText: AppStrings.username,
                          labelText: AppStrings.username,
                          errorText: (snapshot.data ?? true)
                              ? null
                              : AppStrings.usernameError,
                        ),
                        //Lecture 74 - Login View UI Continue #65
                      );
                    },
                  ),
                ),
                // TextField password
                const SizedBox(height: AppSize.s28),
                Padding(
                  padding: const EdgeInsets.only(
                      left: AppPadding.p28, right: AppPadding.p28),
                  child: StreamBuilder<bool>(
                    stream: _viewModel.outIsPasswordValid,
                    builder: (context, snapshot) {
                      return TextField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: _userPasswordController,
                        decoration: InputDecoration(
                          hintText: AppStrings.password,
                          labelText: AppStrings.password,
                          errorText: (snapshot.data ?? true)
                              ? null
                              : AppStrings.passwordError,
                        ),
                        //Lecture 74 - Login View UI Continue #65
                      );
                    },
                  ),
                ),
                //Lecture 75 - Finalising Login UI #66
                // Button login
                const SizedBox(height: AppSize.s28),
                Padding(
                  padding: const EdgeInsets.only(
                      left: AppPadding.p28, right: AppPadding.p28),
                  child: StreamBuilder<bool>(
                    stream: _viewModel.outAreAllInputsValid,
                    builder: (context, snapshot) {
                      return SizedBox(
                        width: double.infinity,
                        height: AppSize.s40,
                        child: ElevatedButton(
                          onPressed: (snapshot.data ?? false)
                              ? () {
                                  _viewModel.login();
                                }
                              : null,
                          child: const Text(AppStrings.login),
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      top: AppPadding.p8,
                      right: AppPadding.p20,
                      left: AppPadding.p28),
                ),
              ],
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
