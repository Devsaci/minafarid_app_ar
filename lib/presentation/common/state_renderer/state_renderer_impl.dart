// Lecture 94 - Applying State Renderer - Loading State #82

import 'package:dartz/dartz_streaming.dart';
import 'package:flutter/cupertino.dart';
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
  Widget getScreenWidget(BuildContext context, Widget contentScreenWidget,
      Function retryActionFunction) {} //Error
// The body might complete normally, causing 'null'
// to be returned, but the return type,
// 'Widget', is a potentially non-nullable type
}
