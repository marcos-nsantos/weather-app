// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastResponseModel _$ForecastResponseModelFromJson(
  Map<String, dynamic> json,
) => _ForecastResponseModel(
  list: (json['list'] as List<dynamic>)
      .map((e) => ForecastListItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  city: CityData.fromJson(json['city'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ForecastResponseModelToJson(
  _ForecastResponseModel instance,
) => <String, dynamic>{'list': instance.list, 'city': instance.city};

_ForecastListItem _$ForecastListItemFromJson(Map<String, dynamic> json) =>
    _ForecastListItem(
      dt: (json['dt'] as num).toInt(),
      main: ForecastMainData.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => ForecastWeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind: ForecastWindData.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastListItemToJson(_ForecastListItem instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'wind': instance.wind,
    };

_ForecastMainData _$ForecastMainDataFromJson(Map<String, dynamic> json) =>
    _ForecastMainData(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      humidity: (json['humidity'] as num).toInt(),
    );

Map<String, dynamic> _$ForecastMainDataToJson(_ForecastMainData instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'humidity': instance.humidity,
    };

_ForecastWeatherData _$ForecastWeatherDataFromJson(Map<String, dynamic> json) =>
    _ForecastWeatherData(
      id: (json['id'] as num).toInt(),
      main: json['main'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ForecastWeatherDataToJson(
  _ForecastWeatherData instance,
) => <String, dynamic>{
  'id': instance.id,
  'main': instance.main,
  'description': instance.description,
};

_ForecastWindData _$ForecastWindDataFromJson(Map<String, dynamic> json) =>
    _ForecastWindData(speed: (json['speed'] as num).toDouble());

Map<String, dynamic> _$ForecastWindDataToJson(_ForecastWindData instance) =>
    <String, dynamic>{'speed': instance.speed};

_CityData _$CityDataFromJson(Map<String, dynamic> json) =>
    _CityData(name: json['name'] as String, country: json['country'] as String);

Map<String, dynamic> _$CityDataToJson(_CityData instance) => <String, dynamic>{
  'name': instance.name,
  'country': instance.country,
};
