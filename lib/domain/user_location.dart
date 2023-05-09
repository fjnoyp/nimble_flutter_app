import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_location.g.dart';

class Location {
  Location(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}

@riverpod
Location userLocation(UserLocationRef ref) {
  // TODO: use Maps API to retrieve UserLocation
  return Location(37.48771670017411, -122.22652739630438);
}
