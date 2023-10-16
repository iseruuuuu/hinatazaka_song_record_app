import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_screen_state.freezed.dart';

@freezed
class SongScreenState with _$SongScreenState {
  const factory SongScreenState({
    @Default([]) List<int> songList,
  }) = _SongScreenState;
}
