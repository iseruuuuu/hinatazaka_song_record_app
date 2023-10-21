import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        iconSize: 30,
        selectedItemColor: const Color(0xFF00CCFF),
        type: BottomNavigationBarType.fixed,
        currentIndex: state.selectedIndex,
        onTap: controller.onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(FontAwesomeIcons.compactDisc),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(FontAwesomeIcons.mapLocationDot),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(FontAwesomeIcons.placeOfWorship),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
