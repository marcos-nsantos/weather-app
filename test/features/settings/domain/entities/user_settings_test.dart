import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/settings/domain/entities/user_settings.dart';

void main() {
  group('UserSettings', () {
    group('formatTemperature', () {
      test('should return celsius value when unit is celsius', () {
        const settings = UserSettings(temperatureUnit: TemperatureUnit.celsius);

        expect(settings.formatTemperature(25.0), '25');
        expect(settings.formatTemperature(0.0), '0');
        expect(settings.formatTemperature(-10.5), '-11');
      });

      test('should convert to fahrenheit when unit is fahrenheit', () {
        const settings =
            UserSettings(temperatureUnit: TemperatureUnit.fahrenheit);

        // 0°C = 32°F
        expect(settings.formatTemperature(0.0), '32');
        // 100°C = 212°F
        expect(settings.formatTemperature(100.0), '212');
        // 25°C = 77°F
        expect(settings.formatTemperature(25.0), '77');
      });

      test('should handle negative temperatures in celsius', () {
        const settings = UserSettings(temperatureUnit: TemperatureUnit.celsius);

        expect(settings.formatTemperature(-10.0), '-10');
        expect(settings.formatTemperature(-25.5), '-26');
        expect(settings.formatTemperature(-0.5), '-1');
      });

      test('should convert negative celsius to fahrenheit correctly', () {
        const settings =
            UserSettings(temperatureUnit: TemperatureUnit.fahrenheit);

        // -10°C = 14°F
        expect(settings.formatTemperature(-10.0), '14');
        // -40°C = -40°F (the point where both scales meet)
        expect(settings.formatTemperature(-40.0), '-40');
        // -17.78°C ≈ 0°F
        expect(settings.formatTemperature(-17.78), '0');
      });
    });

    group('formatWindSpeed', () {
      test('should return m/s when unit is metersPerSecond', () {
        const settings =
            UserSettings(windSpeedUnit: WindSpeedUnit.metersPerSecond);

        expect(settings.formatWindSpeed(10.0), '10.0 m/s');
        expect(settings.formatWindSpeed(5.5), '5.5 m/s');
      });

      test('should convert to km/h when unit is kilometersPerHour', () {
        const settings =
            UserSettings(windSpeedUnit: WindSpeedUnit.kilometersPerHour);

        // 10 m/s = 36 km/h
        expect(settings.formatWindSpeed(10.0), '36.0 km/h');
        // 1 m/s = 3.6 km/h
        expect(settings.formatWindSpeed(1.0), '3.6 km/h');
      });

      test('should convert to mph when unit is milesPerHour', () {
        const settings =
            UserSettings(windSpeedUnit: WindSpeedUnit.milesPerHour);

        // 10 m/s ≈ 22.37 mph
        expect(settings.formatWindSpeed(10.0), '22.4 mph');
      });
    });

    group('TemperatureUnit', () {
      test('should have correct symbols', () {
        expect(TemperatureUnit.celsius.symbol, '°C');
        expect(TemperatureUnit.fahrenheit.symbol, '°F');
      });
    });

    group('WindSpeedUnit', () {
      test('should have correct symbols', () {
        expect(WindSpeedUnit.metersPerSecond.symbol, 'm/s');
        expect(WindSpeedUnit.kilometersPerHour.symbol, 'km/h');
        expect(WindSpeedUnit.milesPerHour.symbol, 'mph');
      });
    });
  });
}
