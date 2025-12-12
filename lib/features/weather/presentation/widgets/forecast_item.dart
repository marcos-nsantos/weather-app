import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/forecast.dart';
import '../../domain/entities/weather_condition.dart';

class ForecastItemWidget extends StatelessWidget {
  final ForecastItem item;

  const ForecastItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getDayName(item.dateTime),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  DateFormat('MMM d').format(item.dateTime),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            _getWeatherIcon(item.condition),
            color: Colors.white70,
            size: 32,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              item.description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withValues(alpha: 0.7),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${item.tempMaxString}°',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                '${item.tempMinString}°',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getDayName(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final targetDate = DateTime(date.year, date.month, date.day);

    if (targetDate == today) {
      return 'Today';
    } else if (targetDate == today.add(const Duration(days: 1))) {
      return 'Tomorrow';
    } else {
      return DateFormat('EEEE').format(date);
    }
  }

  IconData _getWeatherIcon(WeatherCondition condition) {
    return switch (condition) {
      WeatherCondition.sunny => Icons.wb_sunny,
      WeatherCondition.partlyCloudy => Icons.cloud_queue,
      WeatherCondition.cloudy => Icons.cloud,
      WeatherCondition.rainy => Icons.grain,
      WeatherCondition.heavyRain => Icons.thunderstorm,
      WeatherCondition.thunderstorm => Icons.flash_on,
      WeatherCondition.snowy => Icons.ac_unit,
      WeatherCondition.foggy => Icons.blur_on,
      WeatherCondition.windy => Icons.air,
      WeatherCondition.unknown => Icons.help_outline,
    };
  }
}
