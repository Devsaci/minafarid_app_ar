// Lecture 94 - Applying State Renderer - Loading State #82

import 'package:minafarid_app_ar/presentation/common/state_renderer/state_renderer.dart';

abstract class FlowState {
  StateRendererType getStateRendererType();

  String getMessage();
}
