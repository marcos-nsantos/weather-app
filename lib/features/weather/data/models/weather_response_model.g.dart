// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseModelImpl _$$WeatherResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$WeatherResponseModelImpl(
  main: MainData.fromJson(json['main'] as Map<String, dynamic>),
  weather: (json['weather'] as List<dynamic>)
      .map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
      .toList(),
  wind: WindData.fromJson(json['wind'] as Map<String, dynamic>),
  clouds: CloudsData.fromJson(json['clouds'] as Map<String, dynamic>),
  sys: SysData.fromJson(json['sys'] as Map<String, dynamic>),
  visibility: (json['visibility'] as num).toInt(),
  name: json['name'] as String,
  dt: (json['dt'] as num).toInt(),
);

Map<String, dynamic> _$$WeatherResponseModelImplToJson(
  _$WeatherResponseModelImpl instance,
) => <String, dynamic>{
  'main': instance.main,
  'weather': instance.weather,
  'wind': instance.wind,
  'clouds': instance.clouds,
  'sys': instance.sys,
  'visibility': instance.visibility,
  'name': instance.name,
  'dt': instance.dt,
};

_$MainDataImpl _$$MainDataImplFromJson(Map<String, dynamic> json) =>
    _$MainDataImpl(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      pressure: (json['pressure'] as num).toInt(),
      humidity: (json['humidity'] as num).toInt(),
    );

Map<String, dynamic> _$$MainDataImplToJson(_$MainDataImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

_$WeatherDataImpl _$$WeatherDataImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDataImpl(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherDataImplToJson(_$WeatherDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$WindDataImpl _$$WindDataImplFromJson(Map<String, dynamic> json) =>
    _$WindDataImpl(
      speed: (json['speed'] as num).toDouble(),
      deg: (json['deg'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WindDataImplToJson(_$WindDataImpl instance) =>
    <String, dynamic>{'speed': instance.speed, 'deg': instance.deg};

_$CloudsDataImpl _$$CloudsDataImplFromJson(Map<String, dynamic> json) =>
    _$CloudsDataImpl(all: (json['all'] as num).toInt());

Map<String, dynamic> _$$CloudsDataImplToJson(_$CloudsDataImpl instance) =>
    <String, dynamic>{'all': instance.all};

_$SysDataImpl _$$SysDataImplFromJson(Map<String, dynamic> json) =>
    _$SysDataImpl(
      country: json['country'] as String,
      sunrise: (json['sunrise'] as num).toInt(),
      sunset: (json['sunset'] as num).toInt(),
    );

Map<String, dynamic> _$$SysDataImplToJson(_$SysDataImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
