import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

void main() {
  group('WeatherCondition', () {
    group('fromCode', () {
      test('should return sunny for clear sky codes (800)', () {
        expect(WeatherCondition.fromCode(800), WeatherCondition.sunny);
      });

      test('should return partlyCloudy for few clouds (801)', () {
        expect(WeatherCondition.fromCode(801), WeatherCondition.partlyCloudy);
      });

      test('should return cloudy for scattered/broken clouds (802-804)', () {
        expect(WeatherCondition.fromCode(802), WeatherCondition.cloudy);
        expect(WeatherCondition.fromCode(803), WeatherCondition.cloudy);
        expect(WeatherCondition.fromCode(804), WeatherCondition.cloudy);
      });

      test('should return rainy for rain codes (500-504, 300-321)', () {
        expect(WeatherCondition.fromCode(500), WeatherCondition.rainy);
        expect(WeatherCondition.fromCode(501), WeatherCondition.rainy);
        expect(WeatherCondition.fromCode(300), WeatherCondition.rainy);
        expect(WeatherCondition.fromCode(310), WeatherCondition.rainy);
      });

      test('should return heavyRain for heavy rain codes (502-504, 520-531)',
          () {
        expect(WeatherCondition.fromCode(502), WeatherCondition.heavyRain);
        expect(WeatherCondition.fromCode(503), WeatherCondition.heavyRain);
        expect(WeatherCondition.fromCode(520), WeatherCondition.heavyRain);
        expect(WeatherCondition.fromCode(531), WeatherCondition.heavyRain);
      });

      test('should return heavyRain for freezing rain (511)', () {
        // Code 511 is freezing rain in OpenWeatherMap API
        // It falls in the 500-599 range and >= 502, so it should be heavyRain
        expect(WeatherCondition.fromCode(511), WeatherCondition.heavyRain);
      });

      test('should return thunderstorm for thunderstorm codes (200-232)', () {
        expect(WeatherCondition.fromCode(200), WeatherCondition.thunderstorm);
        expect(WeatherCondition.fromCode(211), WeatherCondition.thunderstorm);
        expect(WeatherCondition.fromCode(232), WeatherCondition.thunderstorm);
      });

      test('should return snowy for snow codes (600-622)', () {
        expect(WeatherCondition.fromCode(600), WeatherCondition.snowy);
        expect(WeatherCondition.fromCode(611), WeatherCondition.snowy);
        expect(WeatherCondition.fromCode(622), WeatherCondition.snowy);
      });

      test('should return foggy for atmosphere codes (701-781)', () {
        expect(WeatherCondition.fromCode(701), WeatherCondition.foggy);
        expect(WeatherCondition.fromCode(741), WeatherCondition.foggy);
        expect(WeatherCondition.fromCode(781), WeatherCondition.foggy);
      });

      test('should return unknown for unrecognized codes', () {
        expect(WeatherCondition.fromCode(100), WeatherCondition.unknown);
        expect(WeatherCondition.fromCode(150), WeatherCondition.unknown);
      });
    });

    group('getAnimationPath', () {
      test('should return day animation path when isDay is true', () {
        expect(
          WeatherCondition.sunny.getAnimationPath(true),
          'assets/animations/sunny.json',
        );
        expect(
          WeatherCondition.cloudy.getAnimationPath(true),
          'assets/animations/cloudy.json',
        );
        expect(
          WeatherCondition.rainy.getAnimationPath(true),
          'assets/animations/rainy.json',
        );
      });

      test('should return night animation path when isDay is false', () {
        expect(
          WeatherCondition.sunny.getAnimationPath(false),
          'assets/animations/night_clear.json',
        );
        expect(
          WeatherCondition.partlyCloudy.getAnimationPath(false),
          'assets/animations/night_cloudy.json',
        );
        expect(
          WeatherCondition.cloudy.getAnimationPath(false),
          'assets/animations/night_cloudy.json',
        );
      });

      test('should return same animation for weather that looks same at night',
          () {
        // Rain, storm, snow look the same day or night
        expect(
          WeatherCondition.rainy.getAnimationPath(false),
          'assets/animations/rainy.json',
        );
        expect(
          WeatherCondition.thunderstorm.getAnimationPath(false),
          'assets/animations/stormy.json',
        );
        expect(
          WeatherCondition.snowy.getAnimationPath(false),
          'assets/animations/snowy.json',
        );
      });
    });
  });
}
