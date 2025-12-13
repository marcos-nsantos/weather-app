import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/data/models/forecast_response_model.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

void main() {
  group('ForecastResponseModel', () {
    final tForecastJson = {
      'list': [
        {
          'dt': 1609480800,
          'main': {
            'temp': 25.5,
            'temp_min': 20.0,
            'temp_max': 30.0,
            'humidity': 65,
          },
          'weather': [
            {'id': 800, 'main': 'Clear', 'description': 'clear sky'}
          ],
          'wind': {'speed': 5.5},
        },
        {
          'dt': 1609567200,
          'main': {
            'temp': 22.0,
            'temp_min': 18.0,
            'temp_max': 26.0,
            'humidity': 70,
          },
          'weather': [
            {'id': 500, 'main': 'Rain', 'description': 'light rain'}
          ],
          'wind': {'speed': 3.0},
        },
      ],
      'city': {
        'name': 'São Paulo',
        'country': 'BR',
      }
    };

    test('should parse from JSON correctly', () {
      final model = ForecastResponseModel.fromJson(tForecastJson);

      expect(model.list.length, 2);
      expect(model.city.name, 'São Paulo');
      expect(model.city.country, 'BR');
    });

    test('should parse forecast items correctly', () {
      final model = ForecastResponseModel.fromJson(tForecastJson);

      final firstItem = model.list.first;
      expect(firstItem.dt, 1609480800);
      expect(firstItem.main.temp, 25.5);
      expect(firstItem.main.tempMin, 20.0);
      expect(firstItem.main.tempMax, 30.0);
      expect(firstItem.main.humidity, 65);
      expect(firstItem.weather.first.id, 800);
      expect(firstItem.wind.speed, 5.5);
    });

    test('should convert to Forecast entity correctly', () {
      final model = ForecastResponseModel.fromJson(tForecastJson);
      final entity = model.toEntity();

      expect(entity.cityName, 'São Paulo');
      expect(entity.items.length, 2);
    });

    test('should convert forecast items to entity correctly', () {
      final model = ForecastResponseModel.fromJson(tForecastJson);
      final entity = model.toEntity();

      final firstItem = entity.items.first;
      expect(firstItem.temperature, 25.5);
      expect(firstItem.tempMin, 20.0);
      expect(firstItem.tempMax, 30.0);
      expect(firstItem.humidity, 65);
      expect(firstItem.windSpeed, 5.5);
      expect(firstItem.condition, WeatherCondition.sunny);
      expect(firstItem.description, 'clear sky');
    });

    test('should convert timestamps to DateTime', () {
      final model = ForecastResponseModel.fromJson(tForecastJson);
      final entity = model.toEntity();

      expect(
        entity.items.first.dateTime,
        DateTime.fromMillisecondsSinceEpoch(1609480800 * 1000),
      );
    });

    test('should map rainy condition correctly', () {
      final model = ForecastResponseModel.fromJson(tForecastJson);
      final entity = model.toEntity();

      expect(entity.items[1].condition, WeatherCondition.rainy);
    });
  });

  group('ForecastListItem', () {
    test('should parse from JSON', () {
      final json = {
        'dt': 1609480800,
        'main': {
          'temp': 25.5,
          'temp_min': 20.0,
          'temp_max': 30.0,
          'humidity': 65,
        },
        'weather': [
          {'id': 800, 'main': 'Clear', 'description': 'clear sky'}
        ],
        'wind': {'speed': 5.5},
      };

      final item = ForecastListItem.fromJson(json);

      expect(item.dt, 1609480800);
      expect(item.main.temp, 25.5);
      expect(item.weather.length, 1);
      expect(item.wind.speed, 5.5);
    });
  });

  group('ForecastMainData', () {
    test('should parse from JSON', () {
      final json = {
        'temp': 25.5,
        'temp_min': 20.0,
        'temp_max': 30.0,
        'humidity': 65,
      };

      final data = ForecastMainData.fromJson(json);

      expect(data.temp, 25.5);
      expect(data.tempMin, 20.0);
      expect(data.tempMax, 30.0);
      expect(data.humidity, 65);
    });
  });

  group('ForecastWeatherData', () {
    test('should parse from JSON', () {
      final json = {
        'id': 800,
        'main': 'Clear',
        'description': 'clear sky',
      };

      final data = ForecastWeatherData.fromJson(json);

      expect(data.id, 800);
      expect(data.main, 'Clear');
      expect(data.description, 'clear sky');
    });
  });

  group('ForecastWindData', () {
    test('should parse from JSON', () {
      final json = {'speed': 5.5};

      final data = ForecastWindData.fromJson(json);

      expect(data.speed, 5.5);
    });
  });

  group('CityData', () {
    test('should parse from JSON', () {
      final json = {
        'name': 'London',
        'country': 'GB',
      };

      final data = CityData.fromJson(json);

      expect(data.name, 'London');
      expect(data.country, 'GB');
    });
  });
}
