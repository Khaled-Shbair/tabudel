import 'package:shared_preferences/shared_preferences.dart';

import 'Database/Models/Users.dart';

enum PrefKey { login, phone, id }

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

  Future<void> save(User user) async {
    await _sharedPreferences.setString(PrefKey.phone.toString(), user.phone);
    await _sharedPreferences.setInt(PrefKey.id.toString(), user.id);
    await _sharedPreferences.setBool(PrefKey.login.toString(), true);
  }

  bool get login =>
      _sharedPreferences.getBool(PrefKey.login.toString()) ?? false;

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }

  T? getKey<T>({required String key}) {
    return _sharedPreferences.get(key) as T;
  }
}
