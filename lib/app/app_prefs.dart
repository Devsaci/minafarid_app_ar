import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String?> getAppLanguage() async {
    String? language = _sharedPreferences.getString("key");

    return null;
  }
}
