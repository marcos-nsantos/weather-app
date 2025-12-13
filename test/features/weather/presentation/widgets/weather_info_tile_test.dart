import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_info_tile.dart';

void main() {
  group('WeatherInfoTile', () {
    testWidgets('should display icon, label and value', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: WeatherInfoTile(
              icon: Icons.water_drop,
              label: 'Humidity',
              value: '65%',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.water_drop), findsOneWidget);
      expect(find.text('Humidity'), findsOneWidget);
      expect(find.text('65%'), findsOneWidget);
    });

    testWidgets('should display wind information', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: WeatherInfoTile(
              icon: Icons.air,
              label: 'Wind',
              value: '5.5 m/s',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.air), findsOneWidget);
      expect(find.text('Wind'), findsOneWidget);
      expect(find.text('5.5 m/s'), findsOneWidget);
    });

    testWidgets('should display visibility information', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: WeatherInfoTile(
              icon: Icons.visibility,
              label: 'Visibility',
              value: '10 km',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.visibility), findsOneWidget);
      expect(find.text('Visibility'), findsOneWidget);
      expect(find.text('10 km'), findsOneWidget);
    });
  });
}
