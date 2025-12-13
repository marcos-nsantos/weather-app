import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/core/errors/exceptions.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/core/network/network_info.dart';
import 'package:weather_app/core/utils/result.dart';
import 'package:weather_app/features/weather/data/datasources/weather_local_datasource.dart';
import 'package:weather_app/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app/features/weather/data/models/forecast_response_model.dart';
import 'package:weather_app/features/weather/data/models/weather_response_model.dart';
import 'package:weather_app/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

class MockWeatherRemoteDatasource extends Mock
    implements WeatherRemoteDatasource {}

class MockWeatherLocalDatasource extends Mock
    implements WeatherLocalDatasource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

class FakeWeather extends Fake implements Weather {}

void main() {
  late WeatherRepositoryImpl repository;
  late MockWeatherRemoteDatasource mockRemoteDatasource;
  late MockWeatherLocalDatasource mockLocalDatasource;
  late MockNetworkInfo mockNetworkInfo;

  setUpAll(() {
    registerFallbackValue(FakeWeather());
  });

  setUp(() {
    mockRemoteDatasource = MockWeatherRemoteDatasource();
    mockLocalDatasource = MockWeatherLocalDatasource();
    mockNetworkInfo = MockNetworkInfo();
    repository = WeatherRepositoryImpl(
      remoteDatasource: mockRemoteDatasource,
      localDatasource: mockLocalDatasource,
      networkInfo: mockNetworkInfo,
    );
  });

  final tWeatherModel = WeatherResponseModel(
    main: const MainData(
      temp: 25.5,
      feelsLike: 26.0,
      tempMin: 20.0,
      tempMax: 30.0,
      pressure: 1013,
      humidity: 65,
    ),
    weather: const [
      WeatherData(id: 800, main: 'Clear', description: 'clear sky', icon: '01d')
    ],
    wind: const WindData(speed: 5.5, deg: 180),
    clouds: const CloudsData(all: 0),
    sys: const SysData(country: 'BR', sunrise: 1609459200, sunset: 1609502400),
    visibility: 10000,
    name: 'São Paulo',
    dt: 1609480800,
  );

  final tWeather = Weather(
    cityName: 'São Paulo',
    country: 'BR',
    temperature: 25.5,
    feelsLike: 26.0,
    tempMin: 20.0,
    tempMax: 30.0,
    humidity: 65,
    windSpeed: 5.5,
    condition: WeatherCondition.sunny,
    description: 'clear sky',
    pressure: 1013,
    visibility: 10000,
    cloudiness: 0,
    sunrise: DateTime.fromMillisecondsSinceEpoch(1609459200 * 1000),
    sunset: DateTime.fromMillisecondsSinceEpoch(1609502400 * 1000),
    timestamp: DateTime.fromMillisecondsSinceEpoch(1609480800 * 1000),
  );

  group('getCurrentWeather', () {
    const tLatitude = -23.5505;
    const tLongitude = -46.6333;

    test('should return weather when device is online and call is successful',
        () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDatasource.getCurrentWeather(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          )).thenAnswer((_) async => tWeatherModel);
      when(() => mockLocalDatasource.cacheWeather(any()))
          .thenAnswer((_) async {});

      // act
      final result = await repository.getCurrentWeather(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.isSuccess, isTrue);
      result.when(
        success: (weather) {
          expect(weather.cityName, 'São Paulo');
          expect(weather.temperature, 25.5);
        },
        failure: (_) => fail('Should be success'),
      );
    });

    test('should cache weather when call is successful', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDatasource.getCurrentWeather(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          )).thenAnswer((_) async => tWeatherModel);
      when(() => mockLocalDatasource.cacheWeather(any()))
          .thenAnswer((_) async {});

      // act
      await repository.getCurrentWeather(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      verify(() => mockLocalDatasource.cacheWeather(any())).called(1);
    });

    test('should return ServerFailure when remote call fails', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDatasource.getCurrentWeather(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          )).thenThrow(const ServerException('Server error'));

      // act
      final result = await repository.getCurrentWeather(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.isFailure, isTrue);
      result.when(
        success: (_) => fail('Should be failure'),
        failure: (failure) {
          expect(failure, isA<ServerFailure>());
        },
      );
    });

    test('should return cached weather when device is offline', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      when(() => mockLocalDatasource.getLastWeather())
          .thenAnswer((_) async => tWeather);

      // act
      final result = await repository.getCurrentWeather(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.isSuccess, isTrue);
      verifyNever(() => mockRemoteDatasource.getCurrentWeather(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          ));
    });

    test(
        'should return NetworkFailure when device is offline and no cached data',
        () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      when(() => mockLocalDatasource.getLastWeather())
          .thenThrow(const CacheException('No cached data'));

      // act
      final result = await repository.getCurrentWeather(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.isFailure, isTrue);
      result.when(
        success: (_) => fail('Should be failure'),
        failure: (failure) {
          expect(failure, isA<NetworkFailure>());
        },
      );
    });
  });

  group('getWeatherByCity', () {
    const tCityName = 'London';

    test('should return weather when device is online and call is successful',
        () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDatasource.getWeatherByCity(any()))
          .thenAnswer((_) async => tWeatherModel);

      // act
      final result = await repository.getWeatherByCity(tCityName);

      // assert
      expect(result.isSuccess, isTrue);
    });

    test('should return ServerFailure when remote call fails', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDatasource.getWeatherByCity(any()))
          .thenThrow(const ServerException('City not found'));

      // act
      final result = await repository.getWeatherByCity(tCityName);

      // assert
      expect(result.isFailure, isTrue);
      result.when(
        success: (_) => fail('Should be failure'),
        failure: (failure) {
          expect(failure, isA<ServerFailure>());
        },
      );
    });

    test('should return NetworkFailure when device is offline', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // act
      final result = await repository.getWeatherByCity(tCityName);

      // assert
      expect(result.isFailure, isTrue);
      result.when(
        success: (_) => fail('Should be failure'),
        failure: (failure) {
          expect(failure, isA<NetworkFailure>());
        },
      );
    });
  });

  group('getForecast', () {
    const tLatitude = -23.5505;
    const tLongitude = -46.6333;

    final tForecastModel = ForecastResponseModel(
      list: [
        ForecastListItem(
          dt: 1609480800,
          main: const ForecastMainData(
            temp: 25.5,
            tempMin: 20.0,
            tempMax: 30.0,
            humidity: 65,
          ),
          weather: const [
            ForecastWeatherData(
                id: 800, main: 'Clear', description: 'clear sky')
          ],
          wind: const ForecastWindData(speed: 5.5),
        ),
      ],
      city: const CityData(
        name: 'São Paulo',
        country: 'BR',
      ),
    );

    test('should return forecast when device is online and call is successful',
        () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDatasource.getForecast(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
            days: any(named: 'days'),
          )).thenAnswer((_) async => tForecastModel);

      // act
      final result = await repository.getForecast(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.isSuccess, isTrue);
    });

    test('should return ServerFailure when remote call fails', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDatasource.getForecast(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
            days: any(named: 'days'),
          )).thenThrow(const ServerException('Server error'));

      // act
      final result = await repository.getForecast(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.isFailure, isTrue);
    });

    test('should return NetworkFailure when device is offline', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);

      // act
      final result = await repository.getForecast(
        latitude: tLatitude,
        longitude: tLongitude,
      );

      // assert
      expect(result.isFailure, isTrue);
      result.when(
        success: (_) => fail('Should be failure'),
        failure: (failure) {
          expect(failure, isA<NetworkFailure>());
        },
      );
    });
  });
}
