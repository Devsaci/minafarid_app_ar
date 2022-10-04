//Lecture 87 - Adding State Renderer Implementation #75

import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/resources/strings_manager.dart';

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
        break;
      case StateRendererType.fullScreenErrorState:
        // TODO: Handle this case.
        break;
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
}
