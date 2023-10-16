import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hinatazaka_song_record_app/constants/song.dart';
import 'package:hinatazaka_song_record_app/screen/song/song_screen_view_model.dart';

class SongScreen extends ConsumerWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(songScreenViewModelProvider());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: state.songList.isNotEmpty
          ? ListView.builder(
              itemCount: song.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(song[index]),
                  trailing: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFF00CCFF),
                          child: IconButton(
                            onPressed: () => ref
                                .read(songScreenViewModelProvider().notifier)
                                .decrement(index),
                            icon: const Icon(
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
                          backgroundColor: const Color(0xFF00CCFF),
                          child: IconButton(
                            onPressed: () => ref
                                .read(songScreenViewModelProvider().notifier)
                                .increment(index),
                            icon: const Icon(
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
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
