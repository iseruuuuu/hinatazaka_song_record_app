import 'package:hinatazaka_song_record_app/preference/preference.dart';
import 'package:hinatazaka_song_record_app/screen/home/home_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen_view_model.g.dart';

@riverpod
class HomeScreenViewModel extends _$HomeScreenViewModel {
  HomeScreenState build({
    HomeScreenState initState = const HomeScreenState(),
  }) {
    return initState;
  }

  List<int> count = [];

  void loadPreference() async {
    final list = await Preference().getStringList();
    if (list.isEmpty) {
      //TODO もし、曲が増えたらその分だけ増やす実装を今後作る必要がある。
      state = state.copyWith(
        songList: List<String>.filled(106, '0').map(int.parse).toList(),
      );
      count = List<String>.filled(106, '0').map(int.parse).toList();
    } else {
      state = state.copyWith(
        songList: list.map(int.parse).toList(),
      );
    }
  }

  void increment(int index) {
    count[index] += 1;
    storePreference(count);
  }

  void decrement(int index) {
    if (count[index] != 0) {
      count[index] -= 1;
      storePreference(count);
    }
  }

  void storePreference(List<int> count) async {
    final list = count.map((e) => e.toString()).toList();
    await Preference().setStringList(list);
  }
}
