import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hinatazaka_song_record_app/constants/song.dart';
import 'package:hinatazaka_song_record_app/screen/home/home_screen_view_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenViewModelProvider());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: state.songList.isNotEmpty
          ? ListView.builder(
              itemCount: song.length,
              reverse: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(song[index]),
                  trailing: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF00CCFF),
                          child: IconButton(
                            onPressed: () => ref
                                .read(homeScreenViewModelProvider().notifier)
                                .decrement(index),
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          state.songList[index].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xFF00CCFF),
                          child: IconButton(
                            onPressed: () => ref
                                .read(homeScreenViewModelProvider().notifier)
                                .increment(index),
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          //TODO　最初の読み込みだからSplach画面でもいいかも
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
