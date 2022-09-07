// ignore_for_file: constant_identifier_names

import 'package:minafarid_app_ar/presentation/resources/langauge_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_LANG = "PREFS_KEY_LANG";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String?> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);

    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      // return default lan
      //Lecture 64 Update Dio Factory with App Preferenceses #55
      return LanguageType.ENGLISH.getValue();
    }
  }
}
