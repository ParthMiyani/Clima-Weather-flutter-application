import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrantLocation() async {
    try {
      Position position = await Geolocator()
          .getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
