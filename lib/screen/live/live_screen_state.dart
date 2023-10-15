import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_screen_state.freezed.dart';

@freezed
class LiveScreenState with _$LiveScreenState {
  const factory LiveScreenState({
    @Default([]) List<int> list,
  }) = _LiveScreenState;
}
