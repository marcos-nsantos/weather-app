import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/widgets/error_display.dart';
import '../../../../shared/widgets/gradient_background.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../domain/entities/weather.dart';
import '../providers/weather_providers.dart';
import '../widgets/current_weather_card.dart';
import '../widgets/forecast_list.dart';
import '../widgets/weather_animation.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherAsync = ref.watch(currentWeatherProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: weatherAsync.maybeWhen(
          data: (weather) => Text(
            '${weather.cityName}, ${weather.country}',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          orElse: () => const Text('Weather'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showSearchDialog(context, ref),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: GradientBackground(
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () =>
                ref.read(currentWeatherProvider.notifier).refresh(),
            color: Colors.white,
            backgroundColor: Colors.white24,
            child: weatherAsync.when(
              data: (weather) => _WeatherContent(weather: weather),
              loading: () =>
                  const LoadingIndicator(message: 'Loading weather...'),
              error: (error, _) => ErrorDisplay(
                message: error.toString(),
                onRetry: () => ref.invalidate(currentWeatherProvider),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSearchDialog(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'Search City',
          style: TextStyle(color: Colors.white),
        ),
        content: TextField(
          controller: controller,
          autofocus: true,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter city name',
            hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              ref.read(currentWeatherProvider.notifier).searchCity(value);
              Navigator.of(context).pop();
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final city = controller.text;
              if (city.isNotEmpty) {
                ref.read(currentWeatherProvider.notifier).searchCity(city);
                Navigator.of(context).pop();
              }
            },
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }
}

class _WeatherContent extends StatelessWidget {
  final Weather weather;

  const _WeatherContent({required this.weather});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const WeatherAnimation(),
              const SizedBox(height: 24),
              CurrentWeatherCard(weather: weather),
              const SizedBox(height: 24),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '5-Day Forecast',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: ForecastList(),
        ),
        const SliverPadding(padding: EdgeInsets.only(bottom: 32)),
      ],
    );
  }
}
