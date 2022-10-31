// Lecture 94 - Applying State Renderer - Loading State #82

import 'package:minafarid_app_ar/presentation/common/state_renderer/state_renderer.dart';
import 'package:minafarid_app_ar/presentation/resources/strings_manager.dart';

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

