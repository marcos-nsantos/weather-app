// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Forecast _$ForecastFromJson(Map<String, dynamic> json) => _Forecast(
  items: (json['items'] as List<dynamic>)
      .map((e) => ForecastItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  cityName: json['city_name'] as String,
);

Map<String, dynamic> _$ForecastToJson(_Forecast instance) => <String, dynamic>{
  'items': instance.items,
  'city_name': instance.cityName,
};

_ForecastItem _$ForecastItemFromJson(Map<String, dynamic> json) =>
    _ForecastItem(
      dateTime: DateTime.parse(json['date_time'] as String),
      temperature: (json['temperature'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      condition: $enumDecode(_$WeatherConditionEnumMap, json['condition']),
      description: json['description'] as String,
      humidity: (json['humidity'] as num).toInt(),
      windSpeed: (json['wind_speed'] as num).toDouble(),
    );

Map<String, dynamic> _$ForecastItemToJson(_ForecastItem instance) =>
    <String, dynamic>{
      'date_time': instance.dateTime.toIso8601String(),
      'temperature': instance.temperature,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'condition': _$WeatherConditionEnumMap[instance.condition]!,
      'description': instance.description,
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
    };

const _$WeatherConditionEnumMap = {
  WeatherCondition.sunny: 'sunny',
  WeatherCondition.partlyCloudy: 'partlyCloudy',
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.rainy: 'rainy',
  WeatherCondition.heavyRain: 'heavyRain',
  WeatherCondition.thunderstorm: 'thunderstorm',
  WeatherCondition.snowy: 'snowy',
  WeatherCondition.foggy: 'foggy',
  WeatherCondition.windy: 'windy',
  WeatherCondition.unknown: 'unknown',
};
