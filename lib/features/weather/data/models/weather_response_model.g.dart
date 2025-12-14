// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherResponseModel _$WeatherResponseModelFromJson(
  Map<String, dynamic> json,
) => _WeatherResponseModel(
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

Map<String, dynamic> _$WeatherResponseModelToJson(
  _WeatherResponseModel instance,
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

_MainData _$MainDataFromJson(Map<String, dynamic> json) => _MainData(
  temp: (json['temp'] as num).toDouble(),
  feelsLike: (json['feels_like'] as num).toDouble(),
  tempMin: (json['temp_min'] as num).toDouble(),
  tempMax: (json['temp_max'] as num).toDouble(),
  pressure: (json['pressure'] as num).toInt(),
  humidity: (json['humidity'] as num).toInt(),
);

Map<String, dynamic> _$MainDataToJson(_MainData instance) => <String, dynamic>{
  'temp': instance.temp,
  'feels_like': instance.feelsLike,
  'temp_min': instance.tempMin,
  'temp_max': instance.tempMax,
  'pressure': instance.pressure,
  'humidity': instance.humidity,
};

_WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => _WeatherData(
  id: (json['id'] as num).toInt(),
  main: json['main'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$WeatherDataToJson(_WeatherData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_WindData _$WindDataFromJson(Map<String, dynamic> json) => _WindData(
  speed: (json['speed'] as num).toDouble(),
  deg: (json['deg'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$WindDataToJson(_WindData instance) => <String, dynamic>{
  'speed': instance.speed,
  'deg': instance.deg,
};

_CloudsData _$CloudsDataFromJson(Map<String, dynamic> json) =>
    _CloudsData(all: (json['all'] as num).toInt());

Map<String, dynamic> _$CloudsDataToJson(_CloudsData instance) =>
    <String, dynamic>{'all': instance.all};

_SysData _$SysDataFromJson(Map<String, dynamic> json) => _SysData(
  country: json['country'] as String,
  sunrise: (json['sunrise'] as num).toInt(),
  sunset: (json['sunset'] as num).toInt(),
);

Map<String, dynamic> _$SysDataToJson(_SysData instance) => <String, dynamic>{
  'country': instance.country,
  'sunrise': instance.sunrise,
  'sunset': instance.sunset,
};
