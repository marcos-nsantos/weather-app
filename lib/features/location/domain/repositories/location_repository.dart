import '../../../../core/utils/result.dart';
import '../entities/user_location.dart';

abstract class LocationRepository {
  Future<Result<UserLocation>> getCurrentLocation();
  Future<bool> checkPermission();
  Future<bool> requestPermission();
}
