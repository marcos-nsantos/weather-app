import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/presentation/widgets/temperature_display.dart';

void main() {
  group('TemperatureDisplay', () {
    testWidgets('should display temperature and feels like values',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TemperatureDisplay(
              temperature: '25',
              feelsLike: '27',
              unit: '°C',
            ),
          ),
        ),
      );

      expect(find.text('25'), findsOneWidget);
      expect(find.text('°C'), findsOneWidget);
      expect(find.text('Feels like 27°C'), findsOneWidget);
    });

    testWidgets('should display fahrenheit unit when specified',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TemperatureDisplay(
              temperature: '77',
              feelsLike: '80',
              unit: '°F',
            ),
          ),
        ),
      );

      expect(find.text('77'), findsOneWidget);
      expect(find.text('°F'), findsOneWidget);
      expect(find.text('Feels like 80°F'), findsOneWidget);
    });

    testWidgets('should default to celsius when unit not specified',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TemperatureDisplay(
              temperature: '20',
              feelsLike: '18',
            ),
          ),
        ),
      );

      expect(find.text('°C'), findsOneWidget);
      expect(find.text('Feels like 18°C'), findsOneWidget);
    });
  });
}
