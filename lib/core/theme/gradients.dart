import 'package:flutter/material.dart';

import '../../features/weather/domain/entities/weather_condition.dart';

class AppGradients {
  AppGradients._();

  // Day gradients
  static const LinearGradient dayDefault = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF4A90D9), Color(0xFF87CEEB)],
  );

  static const LinearGradient daySunny = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF4A90D9), Color(0xFFFFA726)],
  );

  static const LinearGradient dayCloudy = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF78909C), Color(0xFFB0BEC5)],
  );

  static const LinearGradient dayRainy = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF5C6BC0), Color(0xFF7986CB)],
  );

  static const LinearGradient dayStormy = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF37474F), Color(0xFF546E7A)],
  );

  static const LinearGradient daySnowy = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFB3E5FC), Color(0xFFE1F5FE)],
  );

  // Night gradients
  static const LinearGradient nightDefault = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF0D1B2A), Color(0xFF1B263B)],
  );

  static const LinearGradient nightClear = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF0D1B2A), Color(0xFF1E3A5F)],
  );

  static const LinearGradient nightCloudy = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF1B263B), Color(0xFF415A77)],
  );

  static LinearGradient forCondition(WeatherCondition condition, bool isDay) {
    if (isDay) {
      return switch (condition) {
        WeatherCondition.sunny => daySunny,
        WeatherCondition.partlyCloudy => dayDefault,
        WeatherCondition.cloudy => dayCloudy,
        WeatherCondition.rainy => dayRainy,
        WeatherCondition.heavyRain => dayRainy,
        WeatherCondition.thunderstorm => dayStormy,
        WeatherCondition.snowy => daySnowy,
        WeatherCondition.foggy => dayCloudy,
        WeatherCondition.windy => dayDefault,
        WeatherCondition.unknown => dayDefault,
      };
    } else {
      return switch (condition) {
        WeatherCondition.sunny => nightClear,
        WeatherCondition.partlyCloudy => nightCloudy,
        WeatherCondition.cloudy => nightCloudy,
        _ => nightDefault,
      };
    }
  }
}
