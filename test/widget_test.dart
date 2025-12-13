import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:weather_app/app.dart';

void main() {
  testWidgets('Weather app smoke test - renders without crashing',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: WeatherApp(),
      ),
    );

    // Only verifies the app renders without crashing.
    // Actual content (e.g., "Weather" text) depends on async providers
    // that fetch location and API data. Without mocking those providers,
    // there's no guarantee the content will be available at test time.
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
