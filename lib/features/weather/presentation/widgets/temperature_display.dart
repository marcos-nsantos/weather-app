import 'package:flutter/material.dart';

class TemperatureDisplay extends StatelessWidget {
  final String temperature;
  final String feelsLike;

  const TemperatureDisplay({
    super.key,
    required this.temperature,
    required this.feelsLike,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              temperature,
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w200,
                color: Colors.white,
                height: 1,
              ),
            ),
            const Text(
              '°C',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w300,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          'Feels like $feelsLike°C',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
