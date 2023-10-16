import 'package:hinatazaka_song_record_app/preference/preference.dart';
import 'package:hinatazaka_song_record_app/screen/live/live_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'live_screen_view_model.g.dart';

@riverpod
class LiveScreenViewModel extends _$LiveScreenViewModel {
  LiveScreenState build({
    LiveScreenState initState = const LiveScreenState(),
  }) {
    loadPreference();
    return initState;
  }

  List<int> count = [];

  Future<void> loadPreference() async {
    final list = await Preference().getStringList('live');
    if (list.isEmpty) {
      state = state.copyWith(
        list: List<String>.filled(106, '0').map(int.parse).toList(),
      );
      count = List<String>.filled(106, '0').map(int.parse).toList();
    } else {
      state = state.copyWith(
        list: list.map(int.parse).toList(),
      );
      count = list.map(int.parse).toList();
    }
  }

  void increment(int index) {
    count[index] = 1;
    state = state.copyWith(
      list: count,
    );
    storePreference(count);
  }

  void decrement(int index) {
    count[index] = 0;
    state = state.copyWith(
      list: count,
    );
    storePreference(count);
  }

  Future<void> storePreference(List<int> count) async {
    final list = count.map((e) => e.toString()).toList();
    await Preference().setStringList(list, 'live');
  }
}
