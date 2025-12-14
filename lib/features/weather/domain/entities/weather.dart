import 'package:freezed_annotation/freezed_annotation.dart';

import 'weather_condition.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  const Weather._();

  const factory Weather({
    required String cityName,
    required String country,
    required double temperature,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required int humidity,
    required double windSpeed,
    required WeatherCondition condition,
    required String description,
    required int pressure,
    required int visibility,
    required int cloudiness,
    required DateTime sunrise,
    required DateTime sunset,
    required DateTime timestamp,
  }) = _Weather;

  bool get isDay {
    final now = DateTime.now();
    return now.isAfter(sunrise) && now.isBefore(sunset);
  }

  String get temperatureString => '${temperature.round()}';
  String get feelsLikeString => '${feelsLike.round()}';
  String get humidityString => '$humidity%';
  String get windSpeedString => '${windSpeed.toStringAsFixed(1)} m/s';
  String get visibilityString => '${(visibility / 1000).toStringAsFixed(1)} km';

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
