import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/exceptions.dart';
import '../../domain/entities/weather.dart';

abstract class WeatherLocalDatasource {
  Future<Weather> getLastWeather();
  Future<void> cacheWeather(Weather weather);
}

class WeatherLocalDatasourceImpl implements WeatherLocalDatasource {
  static const String _cachedWeatherKey = 'CACHED_WEATHER';

  final SharedPreferences sharedPreferences;

  WeatherLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<Weather> getLastWeather() async {
    final jsonString = sharedPreferences.getString(_cachedWeatherKey);
    if (jsonString != null) {
      try {
        return Weather.fromJson(json.decode(jsonString));
      } catch (_) {
        throw const CacheException('Failed to parse cached weather data');
      }
    }
    throw const CacheException('No cached weather data available');
  }

  @override
  Future<void> cacheWeather(Weather weather) async {
    await sharedPreferences.setString(
      _cachedWeatherKey,
      json.encode(weather.toJson()),
    );
  }
}
