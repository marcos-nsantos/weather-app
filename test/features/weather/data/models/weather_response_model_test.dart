import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

void main() {
  group('WeatherResponseModel', () {
    final tWeatherJson = {
      'main': {
        'temp': 25.5,
        'feels_like': 26.0,
        'temp_min': 20.0,
        'temp_max': 30.0,
        'pressure': 1013,
        'humidity': 65,
      },
      'weather': [
        {
          'id': 800,
          'main': 'Clear',
          'description': 'clear sky',
          'icon': '01d',
        }
      ],
      'wind': {
        'speed': 5.5,
        'deg': 180,
      },
      'clouds': {
        'all': 0,
      },
      'sys': {
        'country': 'BR',
        'sunrise': 1609459200,
        'sunset': 1609502400,
      },
      'visibility': 10000,
      'name': 'São Paulo',
      'dt': 1609480800,
    };

    test('should parse from JSON correctly', () {
      final model = WeatherResponseModel.fromJson(tWeatherJson);

      expect(model.name, 'São Paulo');
      expect(model.main.temp, 25.5);
      expect(model.main.feelsLike, 26.0);
      expect(model.main.tempMin, 20.0);
      expect(model.main.tempMax, 30.0);
      expect(model.main.pressure, 1013);
      expect(model.main.humidity, 65);
      expect(model.weather.first.id, 800);
      expect(model.weather.first.description, 'clear sky');
      expect(model.wind.speed, 5.5);
      expect(model.clouds.all, 0);
      expect(model.sys.country, 'BR');
      expect(model.visibility, 10000);
    });

    test('should convert to Weather entity correctly', () {
      final model = WeatherResponseModel.fromJson(tWeatherJson);
      final entity = model.toEntity();

      expect(entity.cityName, 'São Paulo');
      expect(entity.country, 'BR');
      expect(entity.temperature, 25.5);
      expect(entity.feelsLike, 26.0);
      expect(entity.tempMin, 20.0);
      expect(entity.tempMax, 30.0);
      expect(entity.humidity, 65);
      expect(entity.windSpeed, 5.5);
      expect(entity.condition, WeatherCondition.sunny);
      expect(entity.description, 'clear sky');
      expect(entity.pressure, 1013);
      expect(entity.visibility, 10000);
      expect(entity.cloudiness, 0);
    });

    test('should convert timestamps to DateTime correctly', () {
      final model = WeatherResponseModel.fromJson(tWeatherJson);
      final entity = model.toEntity();

      expect(entity.sunrise, DateTime.fromMillisecondsSinceEpoch(1609459200 * 1000));
      expect(entity.sunset, DateTime.fromMillisecondsSinceEpoch(1609502400 * 1000));
      expect(entity.timestamp, DateTime.fromMillisecondsSinceEpoch(1609480800 * 1000));
    });

    test('should map weather condition codes correctly', () {
      final rainyJson = Map<String, dynamic>.from(tWeatherJson);
      rainyJson['weather'] = [
        {'id': 500, 'main': 'Rain', 'description': 'light rain', 'icon': '10d'}
      ];

      final model = WeatherResponseModel.fromJson(rainyJson);
      final entity = model.toEntity();

      expect(entity.condition, WeatherCondition.rainy);
    });

    test('should handle thunderstorm condition', () {
      final stormyJson = Map<String, dynamic>.from(tWeatherJson);
      stormyJson['weather'] = [
        {'id': 200, 'main': 'Thunderstorm', 'description': 'thunderstorm', 'icon': '11d'}
      ];

      final model = WeatherResponseModel.fromJson(stormyJson);
      final entity = model.toEntity();

      expect(entity.condition, WeatherCondition.thunderstorm);
    });

    test('should handle snow condition', () {
      final snowyJson = Map<String, dynamic>.from(tWeatherJson);
      snowyJson['weather'] = [
        {'id': 600, 'main': 'Snow', 'description': 'light snow', 'icon': '13d'}
      ];

      final model = WeatherResponseModel.fromJson(snowyJson);
      final entity = model.toEntity();

      expect(entity.condition, WeatherCondition.snowy);
    });
  });

  group('MainData', () {
    test('should parse from JSON', () {
      final json = {
        'temp': 25.5,
        'feels_like': 26.0,
        'temp_min': 20.0,
        'temp_max': 30.0,
        'pressure': 1013,
        'humidity': 65,
      };

      final mainData = MainData.fromJson(json);

      expect(mainData.temp, 25.5);
      expect(mainData.feelsLike, 26.0);
      expect(mainData.tempMin, 20.0);
      expect(mainData.tempMax, 30.0);
      expect(mainData.pressure, 1013);
      expect(mainData.humidity, 65);
    });
  });

  group('WeatherData', () {
    test('should parse from JSON', () {
      final json = {
        'id': 800,
        'main': 'Clear',
        'description': 'clear sky',
        'icon': '01d',
      };

      final weatherData = WeatherData.fromJson(json);

      expect(weatherData.id, 800);
      expect(weatherData.main, 'Clear');
      expect(weatherData.description, 'clear sky');
      expect(weatherData.icon, '01d');
    });
  });

  group('WindData', () {
    test('should parse from JSON with deg', () {
      final json = {'speed': 5.5, 'deg': 180};

      final windData = WindData.fromJson(json);

      expect(windData.speed, 5.5);
      expect(windData.deg, 180);
    });

    test('should default deg to 0 when not provided', () {
      final json = {'speed': 3.0};

      final windData = WindData.fromJson(json);

      expect(windData.speed, 3.0);
      expect(windData.deg, 0);
    });
  });

  group('CloudsData', () {
    test('should parse from JSON', () {
      final json = {'all': 75};

      final cloudsData = CloudsData.fromJson(json);

      expect(cloudsData.all, 75);
    });
  });

  group('SysData', () {
    test('should parse from JSON', () {
      final json = {
        'country': 'BR',
        'sunrise': 1609459200,
        'sunset': 1609502400,
      };

      final sysData = SysData.fromJson(json);

      expect(sysData.country, 'BR');
      expect(sysData.sunrise, 1609459200);
      expect(sysData.sunset, 1609502400);
    });
  });
}
