import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/weather.dart';
import '../../domain/entities/weather_condition.dart';

part 'weather_response_model.freezed.dart';
part 'weather_response_model.g.dart';

@freezed
abstract class WeatherResponseModel with _$WeatherResponseModel {
  const WeatherResponseModel._();

  const factory WeatherResponseModel({
    required MainData main,
    required List<WeatherData> weather,
    required WindData wind,
    required CloudsData clouds,
    required SysData sys,
    required int visibility,
    required String name,
    required int dt,
  }) = _WeatherResponseModel;

  Weather toEntity() {
    final weatherData = weather.first;
    return Weather(
      cityName: name,
      country: sys.country,
      temperature: main.temp,
      feelsLike: main.feelsLike,
      tempMin: main.tempMin,
      tempMax: main.tempMax,
      humidity: main.humidity,
      windSpeed: wind.speed,
      condition: WeatherCondition.fromCode(weatherData.id),
      description: weatherData.description,
      pressure: main.pressure,
      visibility: visibility,
      cloudiness: clouds.all,
      sunrise: DateTime.fromMillisecondsSinceEpoch(sys.sunrise * 1000),
      sunset: DateTime.fromMillisecondsSinceEpoch(sys.sunset * 1000),
      timestamp: DateTime.fromMillisecondsSinceEpoch(dt * 1000),
    );
  }

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseModelFromJson(json);
}

@freezed
abstract class MainData with _$MainData {
  const factory MainData({
    required double temp,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required int pressure,
    required int humidity,
  }) = _MainData;

  factory MainData.fromJson(Map<String, dynamic> json) =>
      _$MainDataFromJson(json);
}

@freezed
abstract class WeatherData with _$WeatherData {
  const factory WeatherData({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}

@freezed
abstract class WindData with _$WindData {
  const factory WindData({
    required double speed,
    @Default(0) int deg,
  }) = _WindData;

  factory WindData.fromJson(Map<String, dynamic> json) =>
      _$WindDataFromJson(json);
}

@freezed
abstract class CloudsData with _$CloudsData {
  const factory CloudsData({
    required int all,
  }) = _CloudsData;

  factory CloudsData.fromJson(Map<String, dynamic> json) =>
      _$CloudsDataFromJson(json);
}

@freezed
abstract class SysData with _$SysData {
  const factory SysData({
    required String country,
    required int sunrise,
    required int sunset,
  }) = _SysData;

  factory SysData.fromJson(Map<String, dynamic> json) =>
      _$SysDataFromJson(json);
}
