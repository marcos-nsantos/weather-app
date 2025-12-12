import '../../../../core/utils/result.dart';
import '../entities/forecast.dart';
import '../entities/weather.dart';

abstract class WeatherRepository {
  Future<Result<Weather>> getCurrentWeather({
    required double latitude,
    required double longitude,
  });

  Future<Result<Weather>> getWeatherByCity(String cityName);

  Future<Result<Forecast>> getForecast({
    required double latitude,
    required double longitude,
    int days = 5,
  });
}
