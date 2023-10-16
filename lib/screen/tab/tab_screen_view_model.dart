import 'package:flutter/material.dart';
import 'package:hinatazaka_song_record_app/screen/live/live_screen.dart';
import 'package:hinatazaka_song_record_app/screen/map/map_screen.dart';
import 'package:hinatazaka_song_record_app/screen/song/song_screen.dart';
import 'package:hinatazaka_song_record_app/screen/tab/tab_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_screen_view_model.g.dart';

@riverpod
class TabScreenViewModel extends _$TabScreenViewModel {
  @override
  TabScreenState build({
    TabScreenState initState = const TabScreenState(),
  }) {
    return initState;
  }

  List<Widget> pageList = [
    const SongScreen(),
    const MapScreen(),
    const LiveScreen(),
  ];

  void onTap(int index) {
    state = state.copyWith(
      selectedIndex: index,
    );
  }
}
