import 'package:flutter/material.dart';

import '../../domain/entities/weather.dart';
import 'temperature_display.dart';
import 'weather_info_tile.dart';

class CurrentWeatherCard extends StatelessWidget {
  final Weather weather;

  const CurrentWeatherCard({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        children: [
          TemperatureDisplay(
            temperature: weather.temperatureString,
            feelsLike: weather.feelsLikeString,
          ),
          const SizedBox(height: 8),
          Text(
            weather.description.toUpperCase(),
            style: TextStyle(
              fontSize: 16,
              letterSpacing: 1.2,
              color: Colors.white.withValues(alpha: 0.8),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WeatherInfoTile(
                icon: Icons.water_drop,
                label: 'Humidity',
                value: weather.humidityString,
              ),
              WeatherInfoTile(
                icon: Icons.air,
                label: 'Wind',
                value: weather.windSpeedString,
              ),
              WeatherInfoTile(
                icon: Icons.visibility,
                label: 'Visibility',
                value: weather.visibilityString,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
