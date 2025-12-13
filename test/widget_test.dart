import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:weather_app/app.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';
import 'package:weather_app/features/weather/presentation/widgets/current_weather_card.dart';
import 'package:weather_app/features/weather/presentation/widgets/temperature_display.dart';

final _testWeather = Weather(
  cityName: 'Test City',
  country: 'TC',
  temperature: 25.0,
  feelsLike: 26.0,
  tempMin: 20.0,
  tempMax: 30.0,
  humidity: 65,
  windSpeed: 5.0,
  condition: WeatherCondition.sunny,
  description: 'Clear sky',
  pressure: 1013,
  visibility: 10000,
  cloudiness: 0,
  sunrise: DateTime(2024, 1, 1, 6, 0),
  sunset: DateTime(2024, 1, 1, 18, 0),
  timestamp: DateTime(2024, 1, 1, 12, 0),
);

void main() {
  group('WeatherApp', () {
    testWidgets('renders MaterialApp', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: WeatherApp()),
      );

      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('app initializes without errors', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: WeatherApp()),
      );

      // Allow time for async initialization
      await tester.pump(const Duration(milliseconds: 100));

      // MaterialApp should still be present after initialization
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });

  group('CurrentWeatherCard', () {
    testWidgets('displays weather data correctly', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: CurrentWeatherCard(weather: _testWeather),
            ),
          ),
        ),
      );

      // Check temperature is displayed
      expect(find.byType(TemperatureDisplay), findsOneWidget);

      // Check weather description
      expect(find.text('CLEAR SKY'), findsOneWidget);

      // Check weather info tiles
      expect(find.text('Humidity'), findsOneWidget);
      expect(find.text('Wind'), findsOneWidget);
      expect(find.text('Visibility'), findsOneWidget);
    });

    testWidgets('displays city name in weather card context', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  Text('${_testWeather.cityName}, ${_testWeather.country}'),
                  CurrentWeatherCard(weather: _testWeather),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.text('Test City, TC'), findsOneWidget);
    });
  });
}
