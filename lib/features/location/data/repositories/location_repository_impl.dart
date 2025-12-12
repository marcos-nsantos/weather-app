import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/user_location.dart';
import '../../domain/repositories/location_repository.dart';
import '../datasources/location_datasource.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationDatasource datasource;

  LocationRepositoryImpl({required this.datasource});

  @override
  Future<Result<UserLocation>> getCurrentLocation() async {
    try {
      final location = await datasource.getCurrentLocation();
      return Success(location);
    } on LocationException catch (e) {
      return ResultFailure(LocationFailure(e.message));
    }
  }

  @override
  Future<bool> checkPermission() async {
    return await datasource.checkPermission();
  }

  @override
  Future<bool> requestPermission() async {
    return await datasource.requestPermission();
  }
}
