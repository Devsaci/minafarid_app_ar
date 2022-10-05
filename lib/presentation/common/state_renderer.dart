//Lecture 87 - Adding State Renderer Implementation #75

import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/resources/color_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/font_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/strings_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/styles_manager.dart';
import 'package:minafarid_app_ar/presentation/resources/values_manager.dart';

enum StateRendererType {
  // POPUP STATES (DIALOG)
  popupLoadingState,
  popupErrorState,

  // FULL SCREEN STATED (FULL SCREEN)
  fullScreenLoadingState,
  fullScreenErrorState,
  fullScreenEmptyState,

  // general
  contentState
}

class StateRenderer extends StatelessWidget {
  StateRendererType stateRendererType;
  String message;
  String title;
  Function retryActionFunction;

  StateRenderer({
    required this.stateRendererType,
    this.message = AppStrings.loading,
    this.title = "",
    required this.retryActionFunction,
  });

  @override
  Widget build(BuildContext context) {
    // Lecture 88 - Adding State Renderer Implementation Part 2 #76
    return Container();
  }

  Widget _getStateWidget() {
    switch (stateRendererType) {
      case StateRendererType.popupLoadingState:
        // TODO: Handle this case.
        break;
      case StateRendererType.popupErrorState:
        // TODO: Handle this case.
        break;
      case StateRendererType.fullScreenLoadingState:
        // Lecture 89 - Adding State Renderer Implementation Part 3 #77
        return _getItemsColumn([
          _getAnimatedImage(),
          _getMessage(message),
        ]);
      case StateRendererType.fullScreenErrorState:
        return _getItemsColumn([
          _getAnimatedImage(),
          _getMessage(message),
          _getRetryButton(AppStrings.retryAgain),
        ]);
      case StateRendererType.fullScreenEmptyState:
        // TODO: Handle this case.
        break;
      case StateRendererType.contentState:
        // TODO: Handle this case.
        break;
    }
    return Container();
  }

  Widget _getItemsColumn(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getAnimatedImage() {
    return SizedBox(
      height: AppSize.s100,
      width: AppSize.s100,
      child: Container(), // todo add json image here
    );
  }

  Widget _getMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s8),
        child: Text(
          message,
          style: getRegularStyle(
            color: ColorManager.black,
            fontSize: FontSize.s18,
          ),
        ),
      ),
    );
  }

  Widget _getRetryButton(String buttonTitle) {
    //Lecture 90 - Adding State Renderer Implementation Part 4 #78
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s18),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (stateRendererType ==
                  StateRendererType.fullScreenErrorState){}
            },
            child: Text(buttonTitle),
          ),
        ),
      ),
    );
  }
}
