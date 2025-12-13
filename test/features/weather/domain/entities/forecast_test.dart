import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/domain/entities/forecast.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

void main() {
  group('Forecast', () {
    test('should create instance with items and city name', () {
      final items = [
        ForecastItem(
          dateTime: DateTime(2024, 1, 1, 12, 0),
          temperature: 25.0,
          tempMin: 20.0,
          tempMax: 30.0,
          condition: WeatherCondition.sunny,
          description: 'Clear sky',
          humidity: 65,
          windSpeed: 5.0,
        ),
      ];

      final forecast = Forecast(items: items, cityName: 'Test City');

      expect(forecast.items.length, 1);
      expect(forecast.cityName, 'Test City');
    });

    test('should support empty items list', () {
      final forecast = Forecast(items: [], cityName: 'Empty');

      expect(forecast.items, isEmpty);
    });

    test('should support equality', () {
      final items = [
        ForecastItem(
          dateTime: DateTime(2024, 1, 1, 12, 0),
          temperature: 25.0,
          tempMin: 20.0,
          tempMax: 30.0,
          condition: WeatherCondition.sunny,
          description: 'Clear sky',
          humidity: 65,
          windSpeed: 5.0,
        ),
      ];

      final forecast1 = Forecast(items: items, cityName: 'Test');
      final forecast2 = Forecast(items: items, cityName: 'Test');

      expect(forecast1, equals(forecast2));
    });
  });

  group('ForecastItem', () {
    test('should create instance with all required properties', () {
      final item = ForecastItem(
        dateTime: DateTime(2024, 1, 1, 12, 0),
        temperature: 25.0,
        tempMin: 20.0,
        tempMax: 30.0,
        condition: WeatherCondition.sunny,
        description: 'Clear sky',
        humidity: 65,
        windSpeed: 5.0,
      );

      expect(item.temperature, 25.0);
      expect(item.tempMin, 20.0);
      expect(item.tempMax, 30.0);
      expect(item.condition, WeatherCondition.sunny);
      expect(item.description, 'Clear sky');
      expect(item.humidity, 65);
      expect(item.windSpeed, 5.0);
    });

    test('should return rounded temperature string', () {
      final item = ForecastItem(
        dateTime: DateTime(2024, 1, 1, 12, 0),
        temperature: 25.6,
        tempMin: 20.3,
        tempMax: 30.7,
        condition: WeatherCondition.sunny,
        description: 'Clear sky',
        humidity: 65,
        windSpeed: 5.0,
      );

      expect(item.temperatureString, '26');
      expect(item.tempMinString, '20');
      expect(item.tempMaxString, '31');
    });

    test('should handle negative temperatures', () {
      final item = ForecastItem(
        dateTime: DateTime(2024, 1, 1, 12, 0),
        temperature: -5.4,
        tempMin: -10.6,
        tempMax: -2.3,
        condition: WeatherCondition.snowy,
        description: 'Snow',
        humidity: 80,
        windSpeed: 3.0,
      );

      expect(item.temperatureString, '-5');
      expect(item.tempMinString, '-11');
      expect(item.tempMaxString, '-2');
    });

    test('should support equality', () {
      final dateTime = DateTime(2024, 1, 1, 12, 0);

      final item1 = ForecastItem(
        dateTime: dateTime,
        temperature: 25.0,
        tempMin: 20.0,
        tempMax: 30.0,
        condition: WeatherCondition.sunny,
        description: 'Clear sky',
        humidity: 65,
        windSpeed: 5.0,
      );

      final item2 = ForecastItem(
        dateTime: dateTime,
        temperature: 25.0,
        tempMin: 20.0,
        tempMax: 30.0,
        condition: WeatherCondition.sunny,
        description: 'Clear sky',
        humidity: 65,
        windSpeed: 5.0,
      );

      expect(item1, equals(item2));
    });
  });
}
