// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastResponseModelImpl _$$ForecastResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$ForecastResponseModelImpl(
  list: (json['list'] as List<dynamic>)
      .map((e) => ForecastListItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  city: CityData.fromJson(json['city'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ForecastResponseModelImplToJson(
  _$ForecastResponseModelImpl instance,
) => <String, dynamic>{'list': instance.list, 'city': instance.city};

_$ForecastListItemImpl _$$ForecastListItemImplFromJson(
  Map<String, dynamic> json,
) => _$ForecastListItemImpl(
  dt: (json['dt'] as num).toInt(),
  main: ForecastMainData.fromJson(json['main'] as Map<String, dynamic>),
  weather: (json['weather'] as List<dynamic>)
      .map((e) => ForecastWeatherData.fromJson(e as Map<String, dynamic>))
      .toList(),
  wind: ForecastWindData.fromJson(json['wind'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ForecastListItemImplToJson(
  _$ForecastListItemImpl instance,
) => <String, dynamic>{
  'dt': instance.dt,
  'main': instance.main,
  'weather': instance.weather,
  'wind': instance.wind,
};

_$ForecastMainDataImpl _$$ForecastMainDataImplFromJson(
  Map<String, dynamic> json,
) => _$ForecastMainDataImpl(
  temp: (json['temp'] as num).toDouble(),
  tempMin: (json['temp_min'] as num).toDouble(),
  tempMax: (json['temp_max'] as num).toDouble(),
  humidity: (json['humidity'] as num).toInt(),
);

Map<String, dynamic> _$$ForecastMainDataImplToJson(
  _$ForecastMainDataImpl instance,
) => <String, dynamic>{
  'temp': instance.temp,
  'temp_min': instance.tempMin,
  'temp_max': instance.tempMax,
  'humidity': instance.humidity,
};

_$ForecastWeatherDataImpl _$$ForecastWeatherDataImplFromJson(
  Map<String, dynamic> json,
) => _$ForecastWeatherDataImpl(
  id: (json['id'] as num).toInt(),
  main: json['main'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$$ForecastWeatherDataImplToJson(
  _$ForecastWeatherDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'main': instance.main,
  'description': instance.description,
};

_$ForecastWindDataImpl _$$ForecastWindDataImplFromJson(
  Map<String, dynamic> json,
) => _$ForecastWindDataImpl(speed: (json['speed'] as num).toDouble());

Map<String, dynamic> _$$ForecastWindDataImplToJson(
  _$ForecastWindDataImpl instance,
) => <String, dynamic>{'speed': instance.speed};

_$CityDataImpl _$$CityDataImplFromJson(Map<String, dynamic> json) =>
    _$CityDataImpl(
      name: json['name'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$CityDataImplToJson(_$CityDataImpl instance) =>
    <String, dynamic>{'name': instance.name, 'country': instance.country};
