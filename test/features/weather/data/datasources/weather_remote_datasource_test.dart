import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/core/errors/exceptions.dart';
import 'package:weather_app/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late WeatherRemoteDatasourceImpl datasource;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    datasource = WeatherRemoteDatasourceImpl(dio: mockDio);
  });

  group('getCurrentWeather', () {
    const tLatitude = -23.5505;
    const tLongitude = -46.6333;

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

    test('should return WeatherResponseModel when API call is successful',
        () async {
      // arrange
      when(() => mockDio.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => Response(
            data: tWeatherJson,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));

      // act
      final result = await datasource.getCurrentWeather(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.name, 'São Paulo');
      expect(result.main.temp, 25.5);
      expect(result.main.humidity, 65);
      expect(result.weather.first.id, 800);
      expect(result.sys.country, 'BR');
    });

    test('should correctly parse weather entity from model', () async {
      // arrange
      when(() => mockDio.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => Response(
            data: tWeatherJson,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));

      // act
      final model = await datasource.getCurrentWeather(
        latitude: tLatitude,
        longitude: tLongitude,
      );
      final entity = model.toEntity();

      // assert
      expect(entity.cityName, 'São Paulo');
      expect(entity.country, 'BR');
      expect(entity.temperature, 25.5);
      expect(entity.feelsLike, 26.0);
      expect(entity.humidity, 65);
      expect(entity.windSpeed, 5.5);
      expect(entity.condition, WeatherCondition.sunny);
      expect(entity.description, 'clear sky');
    });

    test('should throw ServerException when API returns error', () async {
      // arrange
      when(() => mockDio.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenThrow(DioException(
            type: DioExceptionType.badResponse,
            response: Response(
              statusCode: 404,
              data: {'message': 'city not found'},
              requestOptions: RequestOptions(path: ''),
            ),
            requestOptions: RequestOptions(path: ''),
          ));

      // act & assert
      expect(
        () => datasource.getCurrentWeather(
          latitude: tLatitude,
          longitude: tLongitude,
        ),
        throwsA(isA<ServerException>()),
      );
    });

    test('should throw ServerException on network error', () async {
      // arrange
      when(() => mockDio.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenThrow(DioException(
            type: DioExceptionType.connectionTimeout,
            requestOptions: RequestOptions(path: ''),
          ));

      // act & assert
      expect(
        () => datasource.getCurrentWeather(
          latitude: tLatitude,
          longitude: tLongitude,
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getWeatherByCity', () {
    final tWeatherJson = {
      'main': {
        'temp': 15.0,
        'feels_like': 14.0,
        'temp_min': 12.0,
        'temp_max': 18.0,
        'pressure': 1020,
        'humidity': 80,
      },
      'weather': [
        {
          'id': 500,
          'main': 'Rain',
          'description': 'light rain',
          'icon': '10d',
        }
      ],
      'wind': {
        'speed': 3.5,
        'deg': 90,
      },
      'clouds': {
        'all': 75,
      },
      'sys': {
        'country': 'GB',
        'sunrise': 1609459200,
        'sunset': 1609490400,
      },
      'visibility': 8000,
      'name': 'London',
      'dt': 1609470000,
    };

    test('should return weather for searched city', () async {
      // arrange
      when(() => mockDio.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => Response(
            data: tWeatherJson,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));

      // act
      final result = await datasource.getWeatherByCity('London');

      // assert
      expect(result.name, 'London');
      expect(result.sys.country, 'GB');
      expect(result.weather.first.id, 500);
    });

    test('should correctly map rainy condition', () async {
      // arrange
      when(() => mockDio.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer((_) async => Response(
            data: tWeatherJson,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));

      // act
      final model = await datasource.getWeatherByCity('London');
      final entity = model.toEntity();

      // assert
      expect(entity.condition, WeatherCondition.rainy);
      expect(entity.description, 'light rain');
    });
  });
}
