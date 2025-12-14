import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/result.dart';
import '../../../../core/theme/gradients.dart';
import '../../../../shared/providers/shared_providers.dart';
import '../../../location/presentation/providers/location_providers.dart';
import '../../data/datasources/weather_local_datasource.dart';
import '../../data/datasources/weather_remote_datasource.dart';
import '../../data/repositories/weather_repository_impl.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';

part 'weather_providers.g.dart';

@Riverpod(keepAlive: true)
WeatherRemoteDatasource weatherRemoteDatasource(Ref ref) {
  return WeatherRemoteDatasourceImpl(dio: ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
Future<WeatherLocalDatasource> weatherLocalDatasource(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return WeatherLocalDatasourceImpl(sharedPreferences: prefs);
}

@Riverpod(keepAlive: true)
Future<WeatherRepository> weatherRepository(Ref ref) async {
  final localDatasource = await ref.watch(weatherLocalDatasourceProvider.future);
  return WeatherRepositoryImpl(
    remoteDatasource: ref.watch(weatherRemoteDatasourceProvider),
    localDatasource: localDatasource,
    networkInfo: ref.watch(networkInfoProvider),
  );
}

@riverpod
class CurrentWeather extends _$CurrentWeather {
  @override
  Future<Weather> build() async {
    final location = await ref.watch(currentLocationProvider.future);
    final repository = await ref.watch(weatherRepositoryProvider.future);

    final result = await repository.getCurrentWeather(
      latitude: location.latitude,
      longitude: location.longitude,
    );

    return result.when(
      success: (weather) => weather,
      failure: (failure) => throw Exception(failure.message),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    ref.invalidateSelf();
  }

  Future<void> searchCity(String cityName) async {
    state = const AsyncLoading();
    final repository = await ref.read(weatherRepositoryProvider.future);

    final result = await repository.getWeatherByCity(cityName);

    state = result.when(
      success: (weather) => AsyncData(weather),
      failure: (failure) => AsyncError(failure.message, StackTrace.current),
    );
  }
}

@riverpod
class WeatherForecast extends _$WeatherForecast {
  @override
  Future<Forecast> build() async {
    final location = await ref.watch(currentLocationProvider.future);
    final repository = await ref.watch(weatherRepositoryProvider.future);

    final result = await repository.getForecast(
      latitude: location.latitude,
      longitude: location.longitude,
    );

    return result.when(
      success: (forecast) => forecast,
      failure: (failure) => throw Exception(failure.message),
    );
  }
}

@riverpod
bool isDayTime(Ref ref) {
  final weatherAsync = ref.watch(currentWeatherProvider);

  return weatherAsync.maybeWhen(
    data: (weather) => weather.isDay,
    orElse: () {
      final now = DateTime.now();
      return now.hour >= 6 && now.hour < 18;
    },
  );
}

@riverpod
String weatherAnimationPath(Ref ref) {
  final weatherAsync = ref.watch(currentWeatherProvider);
  final isDay = ref.watch(isDayTimeProvider);

  return weatherAsync.maybeWhen(
    data: (weather) => weather.condition.getAnimationPath(isDay),
    orElse: () => isDay
        ? 'assets/animations/sunny.json'
        : 'assets/animations/night_clear.json',
  );
}

@riverpod
LinearGradient backgroundGradient(Ref ref) {
  final weatherAsync = ref.watch(currentWeatherProvider);
  final isDay = ref.watch(isDayTimeProvider);

  return weatherAsync.maybeWhen(
    data: (weather) => AppGradients.forCondition(weather.condition, isDay),
    orElse: () => isDay ? AppGradients.dayDefault : AppGradients.nightDefault,
  );
}

@riverpod
ThemeMode dynamicThemeMode(Ref ref) {
  final isDay = ref.watch(isDayTimeProvider);
  return isDay ? ThemeMode.light : ThemeMode.dark;
}

// Daily forecast (one per day)
@riverpod
List<ForecastItem> dailyForecast(Ref ref) {
  final forecastAsync = ref.watch(weatherForecastProvider);

  return forecastAsync.maybeWhen(
    data: (forecast) {
      final Map<String, ForecastItem> dailyMap = {};

      for (final item in forecast.items) {
        final dateKey =
            '${item.dateTime.year}-${item.dateTime.month}-${item.dateTime.day}';
        if (!dailyMap.containsKey(dateKey)) {
          dailyMap[dateKey] = item;
        }
      }

      return dailyMap.values.take(5).toList();
    },
    orElse: () => [],
  );
}
