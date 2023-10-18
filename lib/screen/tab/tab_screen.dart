import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hinatazaka_song_record_app/screen/tab/tab_screen_view_model.dart';

class TabScreen extends ConsumerWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tabScreenViewModelProvider());
    final controller = ref.watch(tabScreenViewModelProvider().notifier);
    return Scaffold(
      body: controller.pageList[state.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        iconSize: 15,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        currentIndex: state.selectedIndex,
        onTap: controller.onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.music_note,
                size: 35,
              ),
            ),
            label: '曲一覧',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.map,
                size: 35,
              ),
            ),
            label: 'マップ',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.live_tv,
                size: 35,
              ),
            ),
            label: '会場一覧',
          ),
        ],
      ),
    );
  }
}
