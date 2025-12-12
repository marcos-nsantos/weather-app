// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingsImpl _$$UserSettingsImplFromJson(
  Map<String, dynamic> json,
) => _$UserSettingsImpl(
  temperatureUnit:
      $enumDecodeNullable(_$TemperatureUnitEnumMap, json['temperature_unit']) ??
      TemperatureUnit.celsius,
  windSpeedUnit:
      $enumDecodeNullable(_$WindSpeedUnitEnumMap, json['wind_speed_unit']) ??
      WindSpeedUnit.metersPerSecond,
);

Map<String, dynamic> _$$UserSettingsImplToJson(_$UserSettingsImpl instance) =>
    <String, dynamic>{
      'temperature_unit': _$TemperatureUnitEnumMap[instance.temperatureUnit]!,
      'wind_speed_unit': _$WindSpeedUnitEnumMap[instance.windSpeedUnit]!,
    };

const _$TemperatureUnitEnumMap = {
  TemperatureUnit.celsius: 'celsius',
  TemperatureUnit.fahrenheit: 'fahrenheit',
};

const _$WindSpeedUnitEnumMap = {
  WindSpeedUnit.metersPerSecond: 'metersPerSecond',
  WindSpeedUnit.kilometersPerHour: 'kilometersPerHour',
  WindSpeedUnit.milesPerHour: 'milesPerHour',
};
