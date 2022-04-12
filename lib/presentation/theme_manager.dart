import 'package:flutter/material.dart';
import 'package:minafarid_app_ar/presentation/color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    // cardview theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
    ),

    // app bar theme

    // button theme

    // text theme

    // input decoration theme (text form field)
  );
}
