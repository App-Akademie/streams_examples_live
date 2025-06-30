import 'package:streams_examples_live/location/generate_locations.dart';
import 'package:streams_examples_live/location/location.dart';

void main() async {
  final locations = generateLocations();

  locations.listen(
    (l) {
      print("Neue Location \\o/ lat: ${l.latitude}, long: ${l.longitude}");
    },
  );

  //locations.listen(printLocation);
}

void printLocation(Location l) {
  print("Neue Location \\o/ lat: ${l.latitude}, long: ${l.longitude}");
}
