import 'package:shared_preferences/shared_preferences.dart';

enum PrefKey { login, phone }

class SharedPreferencesController {
  static final SharedPreferencesController _instance =
      SharedPreferencesController._();
  late SharedPreferences _sharedPreferences;

  SharedPreferencesController._();

  factory SharedPreferencesController() {
    return _instance;
  }

  Future<void> getInstance() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String phone}) async {
    await _sharedPreferences.setBool(PrefKey.login.toString(), true);
    await _sharedPreferences.setString(PrefKey.phone.toString(), phone);
  }

  bool get login =>
      _sharedPreferences.getBool(PrefKey.login.toString()) ?? false;

  String get phone =>
      _sharedPreferences.getString(PrefKey.phone.toString()) ?? '';

  Future<bool> cleared() async {
    return await _sharedPreferences.clear();
  }
}
