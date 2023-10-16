import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hinatazaka_song_record_app/screen/live/live_screen_view_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LiveScreen extends ConsumerWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(LiveScreenViewModelProvider());
    final stream =
        Supabase.instance.client.from('place').stream(primaryKey: ['id']);
    return Scaffold(
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final places = snapshot.data!;
          return ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  places[index]['name'],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      places[index]['place'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      places[index]['created_at'],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        state.list[index] == 0
                            ? ref
                                .read(liveScreenViewModelProvider().notifier)
                                .increment(index)
                            : ref
                                .read(liveScreenViewModelProvider().notifier)
                                .decrement(index);
                      },
                      child: Text(
                        state.list[index] == 0 ? '未参戦' : '参戦済み!',
                        style: TextStyle(
                          color: state.list[index] == 0
                              ? Colors.black
                              : Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
