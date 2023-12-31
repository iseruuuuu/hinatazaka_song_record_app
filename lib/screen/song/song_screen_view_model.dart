import 'package:hinatazaka_song_record_app/preference/preference.dart';
import 'package:hinatazaka_song_record_app/screen/song/song_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'song_screen_view_model.g.dart';

@riverpod
class SongScreenViewModel extends _$SongScreenViewModel {
  @override
  SongScreenState build({
    SongScreenState initState = const SongScreenState(),
  }) {
    loadPreference();
    return initState;
  }

  List<int> count = [];

  Future<void> loadPreference() async {
    final list = await Preference().getStringList('count');
    if (list.isEmpty) {
      state = state.copyWith(
        songList: List<String>.filled(106, '0').map(int.parse).toList(),
      );
      count = List<String>.filled(106, '0').map(int.parse).toList();
    } else {
      state = state.copyWith(
        songList: list.map(int.parse).toList(),
      );
      count = list.map(int.parse).toList();
    }
  }

  void increment(int index) {
    count[index]++;
    state = state.copyWith(
      songList: count,
    );
    storePreference(count);
  }

  void decrement(int index) {
    if (count[index] != 0) {
      count[index] -= 1;
      state = state.copyWith(
        songList: count,
      );
      storePreference(count);
    }
  }

  Future<void> storePreference(List<int> count) async {
    final list = count.map((e) => e.toString()).toList();
    await Preference().setStringList(list, 'count');
  }
}
