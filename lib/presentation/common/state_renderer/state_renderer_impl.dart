// Lecture 94 - Applying State Renderer - Loading State #82

import 'package:dartz/dartz_streaming.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minafarid_app_ar/presentation/common/state_renderer/state_renderer.dart';
import 'package:minafarid_app_ar/presentation/resources/strings_manager.dart';

import '../../../app/constants.dart';

abstract class FlowState {
  StateRendererType getStateRendererType();

  String getMessage();
}

// loading state (POPUP,FULL SCREEN)
class LoadingState extends FlowState {
  StateRendererType stateRendererType;
  String? message;

  LoadingState({
    required this.stateRendererType,
    String message = AppStrings.loading,
  });

  @override
  String getMessage() => message ?? AppStrings.loading;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

// Lecture 95 - Applying State Renderer - Error State - Empty State - Co… #83
// error state (POPUP,FULL SCREEN)

class ErrorState extends FlowState {
  StateRendererType stateRendererType;
  String message;

  ErrorState(this.stateRendererType, this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

// content state
class ContentState extends FlowState {
  ContentState();

  @override
  String getMessage() => Constants.empty;

  @override
  StateRendererType getStateRendererType() => StateRendererType.contentState;
}

// EMPTY STATE
class EmptyState extends FlowState {
  String message;

  EmptyState(this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.fullScreenEmptyState;
}

// Lecture 96 - Adding Extension on State Renderer implementer #84
extension FlowStateExtension on FlowState {
  Widget getScreenWidget(
      BuildContext context,
      Widget contentScreenWidget,
      //Error
      Function retryActionFunction) {
    switch (runtimeType) {
      //Lecture 97 -Adding Implementation for Loading State Case #85
      case LoadingState:
        {
          if (getStateRendererType() == StateRendererType.popupLoadingState) {
            // show popup loading
            showPopup(context, getStateRendererType(), getMessage());
            // show content ui of the screen
            return contentScreenWidget;
          } else {
            // full screen loading state
          }
        }
        break;
      case ErrorState:
        {
          break;
        }
      case EmptyState:
        {
          break;
        }
      case ContentState:
        {
          break;
        }
      default:
        {
          break;
        }
    }
  }

  void showPopup(
    BuildContext context,
    StateRendererType stateRendererType,
    String message,
  ) {
    WidgetsBinding.instance?.addPostFrameCallback((_) => showDialog(
        builder: (BuildContext context) => StateRenderer(
          stateRendererType: stateRendererType,
          message: message,
          retryActionFunction: (){},
        ),
        context: context),
    );
  }
}
