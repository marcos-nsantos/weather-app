import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/weather_providers.dart';
import 'forecast_item.dart';

class ForecastList extends ConsumerWidget {
  const ForecastList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastAsync = ref.watch(weatherForecastProvider);
    final dailyItems = ref.watch(dailyForecastProvider);

    return forecastAsync.when(
      data: (_) {
        if (dailyItems.isEmpty) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text(
                'No forecast data available',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          );
        }

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ForecastItemWidget(item: dailyItems[index]),
            ),
            childCount: dailyItems.length,
          ),
        );
      },
      loading: () => const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: CircularProgressIndicator(color: Colors.white),
          ),
        ),
      ),
      error: (error, _) => SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Failed to load forecast',
              style: TextStyle(color: Colors.white.withValues(alpha: 0.7)),
            ),
          ),
        ),
      ),
    );
  }
}
