import 'package:geolocator/geolocator.dart';

import '../../../../core/errors/exceptions.dart';
import '../../domain/entities/user_location.dart';

abstract class LocationDatasource {
  Future<UserLocation> getCurrentLocation();
  Future<bool> checkPermission();
  Future<bool> requestPermission();
}

class LocationDatasourceImpl implements LocationDatasource {
  @override
  Future<UserLocation> getCurrentLocation() async {
    try {
      // Verify service is enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw LocationException('Location services are disabled');
      }

      // Check and request permission if needed
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw LocationException('Location permission denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw LocationException(
          'Location permissions are permanently denied. Please enable in settings.',
        );
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      return UserLocation(
        latitude: position.latitude,
        longitude: position.longitude,
      );
    } on LocationException {
      rethrow;
    } catch (e) {
      throw LocationException('Failed to get current location: $e');
    }
  }

  @override
  Future<bool> checkPermission() async {
    final permission = await Geolocator.checkPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  @override
  Future<bool> requestPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }
}
