import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  final preference = SharedPreferences.getInstance();

  Future<void> setStringList(List<String> value, String key) async {
    final pref = await preference;
    await pref.setStringList(key, value);
  }

  Future<List<String>> getStringList(String key) async {
    final pref = await preference;
    final value = pref.getStringList(key) ?? [];
    return value;
  }
}
