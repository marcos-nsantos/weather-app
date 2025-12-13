import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/core/theme/gradients.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

void main() {
  group('AppGradients', () {
    group('forCondition - day', () {
      test('should return daySunny for sunny condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.sunny, true);
        expect(gradient, AppGradients.daySunny);
      });

      test('should return dayDefault for partlyCloudy condition during day',
          () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.partlyCloudy, true);
        expect(gradient, AppGradients.dayDefault);
      });

      test('should return dayCloudy for cloudy condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.cloudy, true);
        expect(gradient, AppGradients.dayCloudy);
      });

      test('should return dayRainy for rainy condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.rainy, true);
        expect(gradient, AppGradients.dayRainy);
      });

      test('should return dayRainy for heavyRain condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.heavyRain, true);
        expect(gradient, AppGradients.dayRainy);
      });

      test('should return dayStormy for thunderstorm condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.thunderstorm, true);
        expect(gradient, AppGradients.dayStormy);
      });

      test('should return daySnowy for snowy condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.snowy, true);
        expect(gradient, AppGradients.daySnowy);
      });

      test('should return dayCloudy for foggy condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.foggy, true);
        expect(gradient, AppGradients.dayCloudy);
      });

      test('should return dayDefault for windy condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.windy, true);
        expect(gradient, AppGradients.dayDefault);
      });

      test('should return dayDefault for unknown condition during day', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.unknown, true);
        expect(gradient, AppGradients.dayDefault);
      });
    });

    group('forCondition - night', () {
      test('should return nightClear for sunny condition at night', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.sunny, false);
        expect(gradient, AppGradients.nightClear);
      });

      test('should return nightCloudy for partlyCloudy condition at night', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.partlyCloudy, false);
        expect(gradient, AppGradients.nightCloudy);
      });

      test('should return nightCloudy for cloudy condition at night', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.cloudy, false);
        expect(gradient, AppGradients.nightCloudy);
      });

      test('should return nightDefault for rainy condition at night', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.rainy, false);
        expect(gradient, AppGradients.nightDefault);
      });

      test('should return nightDefault for thunderstorm condition at night',
          () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.thunderstorm, false);
        expect(gradient, AppGradients.nightDefault);
      });

      test('should return nightDefault for snowy condition at night', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.snowy, false);
        expect(gradient, AppGradients.nightDefault);
      });

      test('should return nightDefault for unknown condition at night', () {
        final gradient =
            AppGradients.forCondition(WeatherCondition.unknown, false);
        expect(gradient, AppGradients.nightDefault);
      });
    });

    group('gradient properties', () {
      test('daySunny should have correct colors', () {
        expect(AppGradients.daySunny.colors.length, 2);
        expect(AppGradients.daySunny.begin, Alignment.topCenter);
        expect(AppGradients.daySunny.end, Alignment.bottomCenter);
      });

      test('nightClear should have correct colors', () {
        expect(AppGradients.nightClear.colors.length, 2);
        expect(AppGradients.nightClear.begin, Alignment.topCenter);
        expect(AppGradients.nightClear.end, Alignment.bottomCenter);
      });
    });
  });
}
