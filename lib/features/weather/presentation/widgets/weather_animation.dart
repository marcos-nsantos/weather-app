import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../providers/weather_providers.dart';

class WeatherAnimation extends ConsumerWidget {
  final double size;

  const WeatherAnimation({
    super.key,
    this.size = 200,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationPath = ref.watch(weatherAnimationPathProvider);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        key: ValueKey(animationPath),
        height: size,
        width: size,
        child: Lottie.asset(
          animationPath,
          fit: BoxFit.contain,
          repeat: true,
          animate: true,
          errorBuilder: (context, error, stackTrace) {
            return _FallbackWeatherIcon(size: size);
          },
          frameBuilder: (context, child, composition) {
            return AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: composition != null ? 1.0 : 0.0,
              child: child,
            );
          },
        ),
      ),
    );
  }
}

class _FallbackWeatherIcon extends StatelessWidget {
  final double size;

  const _FallbackWeatherIcon({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.cloud,
        size: size * 0.5,
        color: Colors.white70,
      ),
    );
  }
}
