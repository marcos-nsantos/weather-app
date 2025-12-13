import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

void main() {
  group('Weather', () {
    Weather createWeather({
      DateTime? sunrise,
      DateTime? sunset,
      double temperature = 25.0,
      double feelsLike = 26.0,
      int humidity = 65,
      double windSpeed = 5.5,
      int visibility = 10000,
    }) {
      return Weather(
        cityName: 'Test City',
        country: 'TC',
        temperature: temperature,
        feelsLike: feelsLike,
        tempMin: 20.0,
        tempMax: 30.0,
        humidity: humidity,
        windSpeed: windSpeed,
        condition: WeatherCondition.sunny,
        description: 'Clear sky',
        pressure: 1013,
        visibility: visibility,
        cloudiness: 0,
        sunrise: sunrise ?? DateTime.now().subtract(const Duration(hours: 6)),
        sunset: sunset ?? DateTime.now().add(const Duration(hours: 6)),
        timestamp: DateTime.now(),
      );
    }

    group('isDay', () {
      test('should return true when current time is between sunrise and sunset',
          () {
        final weather = createWeather(
          sunrise: DateTime.now().subtract(const Duration(hours: 6)),
          sunset: DateTime.now().add(const Duration(hours: 6)),
        );

        expect(weather.isDay, isTrue);
      });

      test('should return false when current time is before sunrise', () {
        final weather = createWeather(
          sunrise: DateTime.now().add(const Duration(hours: 1)),
          sunset: DateTime.now().add(const Duration(hours: 12)),
        );

        expect(weather.isDay, isFalse);
      });

      test('should return false when current time is after sunset', () {
        final weather = createWeather(
          sunrise: DateTime.now().subtract(const Duration(hours: 12)),
          sunset: DateTime.now().subtract(const Duration(hours: 1)),
        );

        expect(weather.isDay, isFalse);
      });
    });

    group('temperatureString', () {
      test('should return rounded positive temperature', () {
        final weather = createWeather(temperature: 25.4);
        expect(weather.temperatureString, '25');
      });

      test('should round up when decimal is >= 0.5', () {
        final weather = createWeather(temperature: 25.5);
        expect(weather.temperatureString, '26');
      });

      test('should handle negative temperature', () {
        final weather = createWeather(temperature: -15.3);
        expect(weather.temperatureString, '-15');
      });

      test('should handle zero temperature', () {
        final weather = createWeather(temperature: 0.0);
        expect(weather.temperatureString, '0');
      });
    });

    group('feelsLikeString', () {
      test('should return rounded feels like temperature', () {
        final weather = createWeather(feelsLike: 28.7);
        expect(weather.feelsLikeString, '29');
      });

      test('should handle negative feels like', () {
        final weather = createWeather(feelsLike: -10.2);
        expect(weather.feelsLikeString, '-10');
      });
    });

    group('humidityString', () {
      test('should return humidity with percentage', () {
        final weather = createWeather(humidity: 65);
        expect(weather.humidityString, '65%');
      });

      test('should handle 0% humidity', () {
        final weather = createWeather(humidity: 0);
        expect(weather.humidityString, '0%');
      });

      test('should handle 100% humidity', () {
        final weather = createWeather(humidity: 100);
        expect(weather.humidityString, '100%');
      });
    });

    group('windSpeedString', () {
      test('should return wind speed with unit', () {
        final weather = createWeather(windSpeed: 5.5);
        expect(weather.windSpeedString, '5.5 m/s');
      });

      test('should handle zero wind speed', () {
        final weather = createWeather(windSpeed: 0.0);
        expect(weather.windSpeedString, '0.0 m/s');
      });

      test('should format with one decimal place', () {
        final weather = createWeather(windSpeed: 12.345);
        expect(weather.windSpeedString, '12.3 m/s');
      });
    });

    group('visibilityString', () {
      test('should convert meters to kilometers', () {
        final weather = createWeather(visibility: 10000);
        expect(weather.visibilityString, '10.0 km');
      });

      test('should handle low visibility', () {
        final weather = createWeather(visibility: 500);
        expect(weather.visibilityString, '0.5 km');
      });

      test('should handle zero visibility', () {
        final weather = createWeather(visibility: 0);
        expect(weather.visibilityString, '0.0 km');
      });
    });

    group('equality', () {
      test('should be equal when all properties are the same', () {
        final timestamp = DateTime(2024, 1, 1, 12, 0);
        final sunrise = DateTime(2024, 1, 1, 6, 0);
        final sunset = DateTime(2024, 1, 1, 18, 0);

        final weather1 = Weather(
          cityName: 'Test',
          country: 'TC',
          temperature: 25.0,
          feelsLike: 26.0,
          tempMin: 20.0,
          tempMax: 30.0,
          humidity: 65,
          windSpeed: 5.0,
          condition: WeatherCondition.sunny,
          description: 'Clear',
          pressure: 1013,
          visibility: 10000,
          cloudiness: 0,
          sunrise: sunrise,
          sunset: sunset,
          timestamp: timestamp,
        );

        final weather2 = Weather(
          cityName: 'Test',
          country: 'TC',
          temperature: 25.0,
          feelsLike: 26.0,
          tempMin: 20.0,
          tempMax: 30.0,
          humidity: 65,
          windSpeed: 5.0,
          condition: WeatherCondition.sunny,
          description: 'Clear',
          pressure: 1013,
          visibility: 10000,
          cloudiness: 0,
          sunrise: sunrise,
          sunset: sunset,
          timestamp: timestamp,
        );

        expect(weather1, equals(weather2));
      });
    });

    group('copyWith', () {
      test('should create a copy with updated temperature', () {
        final weather = createWeather(temperature: 25.0);
        final updated = weather.copyWith(temperature: 30.0);

        expect(updated.temperature, 30.0);
        expect(updated.cityName, weather.cityName);
      });
    });
  });
}
