import 'package:freezed_annotation/freezed_annotation.dart';

import 'weather_condition.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  const factory Forecast({
    required List<ForecastItem> items,
    required String cityName,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
class ForecastItem with _$ForecastItem {
  const ForecastItem._();

  const factory ForecastItem({
    required DateTime dateTime,
    required double temperature,
    required double tempMin,
    required double tempMax,
    required WeatherCondition condition,
    required String description,
    required int humidity,
    required double windSpeed,
  }) = _ForecastItem;

  String get temperatureString => '${temperature.round()}';
  String get tempMinString => '${tempMin.round()}';
  String get tempMaxString => '${tempMax.round()}';

  factory ForecastItem.fromJson(Map<String, dynamic> json) =>
      _$ForecastItemFromJson(json);
}
