import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/shared/widgets/error_display.dart';

void main() {
  group('ErrorDisplay', () {
    testWidgets('should display error message', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ErrorDisplay(message: 'Something went wrong'),
          ),
        ),
      );

      expect(find.text('Something went wrong'), findsOneWidget);
    });

    testWidgets('should display error icon', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ErrorDisplay(message: 'Error'),
          ),
        ),
      );

      expect(find.byIcon(Icons.error_outline), findsOneWidget);
    });

    testWidgets('should display retry button when onRetry is provided',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ErrorDisplay(
              message: 'Error',
              onRetry: () {},
            ),
          ),
        ),
      );

      expect(find.text('Try Again'), findsOneWidget);
      expect(find.byIcon(Icons.refresh), findsOneWidget);
    });

    testWidgets('should not display retry button when onRetry is null',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ErrorDisplay(message: 'Error'),
          ),
        ),
      );

      expect(find.text('Try Again'), findsNothing);
    });

    testWidgets('should call onRetry when retry button is tapped',
        (tester) async {
      var retryCalled = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ErrorDisplay(
              message: 'Error',
              onRetry: () => retryCalled = true,
            ),
          ),
        ),
      );

      await tester.tap(find.text('Try Again'));
      expect(retryCalled, isTrue);
    });

    testWidgets('should be centered', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ErrorDisplay(message: 'Error'),
          ),
        ),
      );

      // ErrorDisplay uses Center widget for layout
      expect(find.byType(Center), findsWidgets);
    });
  });
}
