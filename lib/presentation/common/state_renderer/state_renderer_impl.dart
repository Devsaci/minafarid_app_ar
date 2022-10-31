// Lecture 94 - Applying State Renderer - Loading State #82

import 'package:minafarid_app_ar/presentation/common/state_renderer/state_renderer.dart';

abstract class FlowState {
  StateRendererType getStateRendererType();

  String getMessage();
}

// loading state (POPUP,FULL SCREEN)
class LoadingState extends FlowState {
  StateRendererType stateRendererType;
  String message;

  LoadingState(this.stateRendererType, this.message);

  @override
  String getMessage() {
    // TODO: implement getMessage
    throw UnimplementedError();
  }

  @override
  StateRendererType getStateRendererType() {
    // TODO: implement getStateRendererType
    throw UnimplementedError();
  }
}
