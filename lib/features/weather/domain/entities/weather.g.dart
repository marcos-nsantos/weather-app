// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      cityName: json['city_name'] as String,
      country: json['country'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      humidity: (json['humidity'] as num).toInt(),
      windSpeed: (json['wind_speed'] as num).toDouble(),
      condition: $enumDecode(_$WeatherConditionEnumMap, json['condition']),
      description: json['description'] as String,
      pressure: (json['pressure'] as num).toInt(),
      visibility: (json['visibility'] as num).toInt(),
      cloudiness: (json['cloudiness'] as num).toInt(),
      sunrise: DateTime.parse(json['sunrise'] as String),
      sunset: DateTime.parse(json['sunset'] as String),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'city_name': instance.cityName,
      'country': instance.country,
      'temperature': instance.temperature,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
      'condition': _$WeatherConditionEnumMap[instance.condition]!,
      'description': instance.description,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'cloudiness': instance.cloudiness,
      'sunrise': instance.sunrise.toIso8601String(),
      'sunset': instance.sunset.toIso8601String(),
      'timestamp': instance.timestamp.toIso8601String(),
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
