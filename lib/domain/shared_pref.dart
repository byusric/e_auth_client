import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static final SharedPref _instance = SharedPref._internal();

  factory SharedPref() {
    return _instance;
  }

  SharedPref._internal() {
    init();
  }

  SharedPreferences? prefs;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  // TOKEN: ----------------------------------------------
  static const String userToken = 'USER_TOKEN';

  Future<String> readToken() async => prefs?.getString(userToken) ?? '';

  Future<bool?> saveToken(String token) async {
    return prefs?.setString(userToken, token);
  }

  Future<bool?> deleteToken() async => prefs?.remove(userToken);

  // Refresh TOKEN: ----------------------------------------------
  static const String userRefreshToken = 'USER_REFRESH_TOKEN';

  Future<String> readRefreshToken() async =>
      prefs?.getString(userRefreshToken) ?? '';

  Future<bool?> saveRefreshToken(String token) async {
    return prefs?.setString(userRefreshToken, token);
  }

  Future<bool?> deleteRefreshToken() async => prefs?.remove(userRefreshToken);
}
