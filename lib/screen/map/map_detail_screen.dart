import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MapDetailScreen extends StatelessWidget {
  const MapDetailScreen({
    super.key,
    required this.latitude,
  });

  final double latitude;

  @override
  Widget build(BuildContext context) {
    final stream = Supabase.instance.client
        .from('place')
        .stream(primaryKey: ['id']).eq('latitude', latitude);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00CCFF),
        elevation: 0,
      ),
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
              return DecoratedBox(
                decoration: BoxDecoration(
                  border: index == 0
                      ? const Border(
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey),
                        )
                      : const Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                ),
                child: ListTile(
                  title: Text(
                    places[index]['name'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${DateTime.parse(places[index]['created_at']).year}年'
                    '${DateTime.parse(places[index]['created_at']).month}月'
                    '${DateTime.parse(places[index]['created_at']).day}日',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
