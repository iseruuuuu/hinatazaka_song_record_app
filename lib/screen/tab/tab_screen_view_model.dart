import 'package:flutter/material.dart';
import 'package:hinatazaka_song_record_app/screen/home/home_screen.dart';
import 'package:hinatazaka_song_record_app/screen/map/map_screen.dart';
import 'package:hinatazaka_song_record_app/screen/tab/tab_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_screen_view_model.g.dart';

@riverpod
class TabScreenViewModel extends _$TabScreenViewModel {
  TabScreenState build({
    TabScreenState initState = const TabScreenState(),
  }) {
    return initState;
  }

  List<Widget> pageList = [
    const HomeScreen(),
    const MapScreen(),
  ];

  void onTap(int index) {
    state = state.copyWith(
      selectedIndex: index,
    );
  }
}
