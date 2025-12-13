import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/domain/entities/forecast.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';
import 'package:weather_app/features/weather/presentation/widgets/forecast_item.dart';

void main() {
  group('ForecastItemWidget', () {
    final tForecastItem = ForecastItem(
      dateTime: DateTime(2024, 1, 15, 12, 0),
      temperature: 22.0,
      tempMin: 18.0,
      tempMax: 26.0,
      condition: WeatherCondition.sunny,
      description: 'Clear sky',
      humidity: 50,
      windSpeed: 3.5,
    );

    testWidgets('should display temperature range', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ForecastItemWidget(item: tForecastItem),
          ),
        ),
      );

      expect(find.text('26°'), findsOneWidget);
      expect(find.text('18°'), findsOneWidget);
    });

    testWidgets('should display weather description', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ForecastItemWidget(item: tForecastItem),
          ),
        ),
      );

      expect(find.text('Clear sky'), findsOneWidget);
    });

    testWidgets('should display weather icon for sunny condition',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ForecastItemWidget(item: tForecastItem),
          ),
        ),
      );

      expect(find.byIcon(Icons.wb_sunny), findsOneWidget);
    });

    testWidgets('should display rain icon for rainy condition', (tester) async {
      final rainyItem = ForecastItem(
        dateTime: DateTime(2024, 1, 15, 12, 0),
        temperature: 15.0,
        tempMin: 12.0,
        tempMax: 18.0,
        condition: WeatherCondition.rainy,
        description: 'Light rain',
        humidity: 80,
        windSpeed: 5.0,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ForecastItemWidget(item: rainyItem),
          ),
        ),
      );

      expect(find.byIcon(Icons.grain), findsOneWidget);
    });

    testWidgets('should display "Today" for current date', (tester) async {
      final todayItem = ForecastItem(
        dateTime: DateTime.now(),
        temperature: 20.0,
        tempMin: 18.0,
        tempMax: 22.0,
        condition: WeatherCondition.cloudy,
        description: 'Cloudy',
        humidity: 60,
        windSpeed: 4.0,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ForecastItemWidget(item: todayItem),
          ),
        ),
      );

      expect(find.text('Today'), findsOneWidget);
    });

    testWidgets('should display "Tomorrow" for next day', (tester) async {
      final tomorrowItem = ForecastItem(
        dateTime: DateTime.now().add(const Duration(days: 1)),
        temperature: 20.0,
        tempMin: 18.0,
        tempMax: 22.0,
        condition: WeatherCondition.cloudy,
        description: 'Cloudy',
        humidity: 60,
        windSpeed: 4.0,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ForecastItemWidget(item: tomorrowItem),
          ),
        ),
      );

      expect(find.text('Tomorrow'), findsOneWidget);
    });
  });
}
