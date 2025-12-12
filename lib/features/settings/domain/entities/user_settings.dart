import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

enum TemperatureUnit {
  celsius('°C'),
  fahrenheit('°F');

  final String symbol;
  const TemperatureUnit(this.symbol);
}

enum WindSpeedUnit {
  metersPerSecond('m/s'),
  kilometersPerHour('km/h'),
  milesPerHour('mph');

  final String symbol;
  const WindSpeedUnit(this.symbol);
}

@freezed
class UserSettings with _$UserSettings {
  const UserSettings._();

  const factory UserSettings({
    @Default(TemperatureUnit.celsius) TemperatureUnit temperatureUnit,
    @Default(WindSpeedUnit.metersPerSecond) WindSpeedUnit windSpeedUnit,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);

  String formatTemperature(double celsius) {
    if (temperatureUnit == TemperatureUnit.fahrenheit) {
      final fahrenheit = (celsius * 9 / 5) + 32;
      return '${fahrenheit.round()}';
    }
    return '${celsius.round()}';
  }

  String formatWindSpeed(double metersPerSecond) {
    switch (windSpeedUnit) {
      case WindSpeedUnit.metersPerSecond:
        return '${metersPerSecond.toStringAsFixed(1)} m/s';
      case WindSpeedUnit.kilometersPerHour:
        final kmh = metersPerSecond * 3.6;
        return '${kmh.toStringAsFixed(1)} km/h';
      case WindSpeedUnit.milesPerHour:
        final mph = metersPerSecond * 2.237;
        return '${mph.toStringAsFixed(1)} mph';
    }
  }
}
