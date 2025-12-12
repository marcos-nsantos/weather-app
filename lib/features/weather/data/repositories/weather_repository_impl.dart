import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_local_datasource.dart';
import '../datasources/weather_remote_datasource.dart';

// Helper to create results
Result<T> _success<T>(T data) => Success(data);
Result<T> _failure<T>(Failure failure) => ResultFailure(failure);

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDatasource remoteDatasource;
  final WeatherLocalDatasource localDatasource;
  final NetworkInfo networkInfo;

  WeatherRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
    required this.networkInfo,
  });

  @override
  Future<Result<Weather>> getCurrentWeather({
    required double latitude,
    required double longitude,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final weatherModel = await remoteDatasource.getCurrentWeather(
          latitude: latitude,
          longitude: longitude,
        );
        final weather = weatherModel.toEntity();
        await localDatasource.cacheWeather(weather);
        return _success(weather);
      } on ServerException catch (e) {
        return _failure(ServerFailure(e.message));
      }
    } else {
      try {
        final cachedWeather = await localDatasource.getLastWeather();
        return _success(cachedWeather);
      } on CacheException {
        return _failure(
          const NetworkFailure('No internet connection and no cached data available'),
        );
      }
    }
  }

  @override
  Future<Result<Weather>> getWeatherByCity(String cityName) async {
    if (await networkInfo.isConnected) {
      try {
        final weatherModel = await remoteDatasource.getWeatherByCity(cityName);
        return _success(weatherModel.toEntity());
      } on ServerException catch (e) {
        return _failure(ServerFailure(e.message));
      }
    } else {
      return _failure(
        const NetworkFailure('No internet connection'),
      );
    }
  }

  @override
  Future<Result<Forecast>> getForecast({
    required double latitude,
    required double longitude,
    int days = 5,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final forecastModel = await remoteDatasource.getForecast(
          latitude: latitude,
          longitude: longitude,
          days: days,
        );
        return _success(forecastModel.toEntity());
      } on ServerException catch (e) {
        return _failure(ServerFailure(e.message));
      }
    } else {
      return _failure(
        const NetworkFailure('No internet connection'),
      );
    }
  }
}
