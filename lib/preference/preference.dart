import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  final preference = SharedPreferences.getInstance();

  Future<void> setStringList(List<String> value) async {
    final pref = await preference;

    //TODO

    await pref.setStringList('count', value);
  }

  Future<List<String>> getStringList() async {
    final pref = await preference;
    final value = pref.getStringList('count') ?? [];
    return value;
  }
}
