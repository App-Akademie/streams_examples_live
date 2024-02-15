import 'dart:async';
import 'dart:math';

import 'package:streams_examples_live/location/location.dart';

Stream<Location> generateLocations() async* {
  final random = Random();

  while (true) {
    final latitude = -90.0 + random.nextDouble() * 180.0;
    final longitude = -180.0 + random.nextDouble() * 360.0;
    yield Location(latitude, longitude);
    await Future.delayed(Duration(seconds: 2));
  }
}
