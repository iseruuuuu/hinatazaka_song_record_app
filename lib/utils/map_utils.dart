import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hinatazaka_song_record_app/screen/map/map_detail_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MapUtils {
  Future<Set<Marker>> createMarker(BuildContext context) async {
    final supabase = Supabase.instance.client;
    final latData = await supabase.from('place').select('latitude').execute();
    final longData = await supabase.from('place').select('longitude').execute();

    final locations = <LatLng>[];

    for (var index = 0; index < latData.data.length; index++) {
      final latValue = latData.data[index]['latitude'];
      final longValue = longData.data[index]['longitude'];
      if (latValue != null && longValue != null) {
        locations.add(
          LatLng(
            double.parse(latValue.toString()),
            double.parse(longValue.toString()),
          ),
        );
      }
    }
    final uniqueLocations = locations.toSet().toList();
    final markers = <Marker>{};
    for (var i = 0; i < uniqueLocations.length; i++) {
      markers.add(
        Marker(
          markerId: MarkerId('marker_$i'),
          position: uniqueLocations[i],
          onTap: () {
            onTap(uniqueLocations[i].latitude, context);
          },
        ),
      );
    }
    return markers;
  }

  Future<void> onTap(double latitude, BuildContext context) async {
    final supabase = Supabase.instance.client;
    final result =
        await supabase.from('place').select().eq('latitude', latitude);
    await showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (builder) {
        return Container(
          height: 250,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  result[0]['place'].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapDetailScreen(latitude: latitude),
                    ),
                  );
                },
                child: const Text(
                  'ライブ情報を見てみる',
                  style: TextStyle(
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
  }
}
