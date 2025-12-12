import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/forecast_response_model.dart';
import '../models/weather_response_model.dart';

abstract class WeatherRemoteDatasource {
  Future<WeatherResponseModel> getCurrentWeather({
    required double latitude,
    required double longitude,
  });

  Future<WeatherResponseModel> getWeatherByCity(String cityName);

  Future<ForecastResponseModel> getForecast({
    required double latitude,
    required double longitude,
    int days = 5,
  });
}

class WeatherRemoteDatasourceImpl implements WeatherRemoteDatasource {
  final Dio dio;

  WeatherRemoteDatasourceImpl({required this.dio});

  @override
  Future<WeatherResponseModel> getCurrentWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await dio.get(
        ApiConstants.currentWeatherEndpoint,
        queryParameters: {
          'lat': latitude,
          'lon': longitude,
          'appid': ApiConstants.apiKey,
          'units': 'metric',
        },
      );
      return WeatherResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data?['message'] ?? 'Failed to fetch weather data',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<WeatherResponseModel> getWeatherByCity(String cityName) async {
    try {
      final response = await dio.get(
        ApiConstants.currentWeatherEndpoint,
        queryParameters: {
          'q': cityName,
          'appid': ApiConstants.apiKey,
          'units': 'metric',
        },
      );
      return WeatherResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data?['message'] ?? 'Failed to fetch weather data',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<ForecastResponseModel> getForecast({
    required double latitude,
    required double longitude,
    int days = 5,
  }) async {
    try {
      final response = await dio.get(
        ApiConstants.forecastEndpoint,
        queryParameters: {
          'lat': latitude,
          'lon': longitude,
          'appid': ApiConstants.apiKey,
          'units': 'metric',
          'cnt': days * 8, // 3-hour intervals
        },
      );
      return ForecastResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data?['message'] ?? 'Failed to fetch forecast data',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
