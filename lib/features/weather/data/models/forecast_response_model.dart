import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/forecast.dart';
import '../../domain/entities/weather_condition.dart';

part 'forecast_response_model.freezed.dart';
part 'forecast_response_model.g.dart';

@freezed
abstract class ForecastResponseModel with _$ForecastResponseModel {
  const ForecastResponseModel._();

  const factory ForecastResponseModel({
    required List<ForecastListItem> list,
    required CityData city,
  }) = _ForecastResponseModel;

  Forecast toEntity() {
    final items = list.map((item) {
      final weather = item.weather.first;
      return ForecastItem(
        dateTime: DateTime.fromMillisecondsSinceEpoch(item.dt * 1000),
        temperature: item.main.temp,
        tempMin: item.main.tempMin,
        tempMax: item.main.tempMax,
        condition: WeatherCondition.fromCode(weather.id),
        description: weather.description,
        humidity: item.main.humidity,
        windSpeed: item.wind.speed,
      );
    }).toList();

    return Forecast(
      items: items,
      cityName: city.name,
    );
  }

  factory ForecastResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseModelFromJson(json);
}

@freezed
abstract class ForecastListItem with _$ForecastListItem {
  const factory ForecastListItem({
    required int dt,
    required ForecastMainData main,
    required List<ForecastWeatherData> weather,
    required ForecastWindData wind,
  }) = _ForecastListItem;

  factory ForecastListItem.fromJson(Map<String, dynamic> json) =>
      _$ForecastListItemFromJson(json);
}

@freezed
abstract class ForecastMainData with _$ForecastMainData {
  const factory ForecastMainData({
    required double temp,
    required double tempMin,
    required double tempMax,
    required int humidity,
  }) = _ForecastMainData;

  factory ForecastMainData.fromJson(Map<String, dynamic> json) =>
      _$ForecastMainDataFromJson(json);
}

@freezed
abstract class ForecastWeatherData with _$ForecastWeatherData {
  const factory ForecastWeatherData({
    required int id,
    required String main,
    required String description,
  }) = _ForecastWeatherData;

  factory ForecastWeatherData.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherDataFromJson(json);
}

@freezed
abstract class ForecastWindData with _$ForecastWindData {
  const factory ForecastWindData({
    required double speed,
  }) = _ForecastWindData;

  factory ForecastWindData.fromJson(Map<String, dynamic> json) =>
      _$ForecastWindDataFromJson(json);
}

@freezed
abstract class CityData with _$CityData {
  const factory CityData({
    required String name,
    required String country,
  }) = _CityData;

  factory CityData.fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);
}
