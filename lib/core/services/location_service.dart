import 'package:geolocator/geolocator.dart';

class LocationGetter {
  Future<Position> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permission denied');
      } else {
        return _getPosition();
      }
    } else {
      return _getPosition();
    }
  }

  Future<Position> _getPosition() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
