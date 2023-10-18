import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MapUtils {
  Future<Set<Marker>> createMarker() async {
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
            print(uniqueLocations[i]);
          },
        ),
      );
    }
    return markers;
  }
}
