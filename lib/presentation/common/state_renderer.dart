//Lecture 87 - Adding State Renderer Implementation #75

import 'package:flutter/material.dart';

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
  late StateRendererType stateRendererType;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
