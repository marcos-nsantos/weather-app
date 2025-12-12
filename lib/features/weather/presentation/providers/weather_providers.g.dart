// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherRemoteDatasourceHash() =>
    r'c1460a76d785a7b49cba11f0a31ea0b60bcf5c7c';

/// See also [weatherRemoteDatasource].
@ProviderFor(weatherRemoteDatasource)
final weatherRemoteDatasourceProvider =
    Provider<WeatherRemoteDatasource>.internal(
      weatherRemoteDatasource,
      name: r'weatherRemoteDatasourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weatherRemoteDatasourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeatherRemoteDatasourceRef = ProviderRef<WeatherRemoteDatasource>;
String _$weatherLocalDatasourceHash() =>
    r'9155dadb31fc1bf48052b2252c25b00065ee2e66';

/// See also [weatherLocalDatasource].
@ProviderFor(weatherLocalDatasource)
final weatherLocalDatasourceProvider =
    FutureProvider<WeatherLocalDatasource>.internal(
      weatherLocalDatasource,
      name: r'weatherLocalDatasourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weatherLocalDatasourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeatherLocalDatasourceRef = FutureProviderRef<WeatherLocalDatasource>;
String _$weatherRepositoryHash() => r'a7289f1e2f65293efb45dda427216b049887279b';

/// See also [weatherRepository].
@ProviderFor(weatherRepository)
final weatherRepositoryProvider = FutureProvider<WeatherRepository>.internal(
  weatherRepository,
  name: r'weatherRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeatherRepositoryRef = FutureProviderRef<WeatherRepository>;
String _$isDayTimeHash() => r'93e1e89ab130df35a4eeb96d819487410d6a86a8';

/// See also [isDayTime].
@ProviderFor(isDayTime)
final isDayTimeProvider = AutoDisposeProvider<bool>.internal(
  isDayTime,
  name: r'isDayTimeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isDayTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsDayTimeRef = AutoDisposeProviderRef<bool>;
String _$weatherAnimationPathHash() =>
    r'dd532909aa6d2d24b70b7df58a82f8153aba40c3';

/// See also [weatherAnimationPath].
@ProviderFor(weatherAnimationPath)
final weatherAnimationPathProvider = AutoDisposeProvider<String>.internal(
  weatherAnimationPath,
  name: r'weatherAnimationPathProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherAnimationPathHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeatherAnimationPathRef = AutoDisposeProviderRef<String>;
String _$backgroundGradientHash() =>
    r'2308daaa12123e9f1921eb75f5ec90c6e9e733ad';

/// See also [backgroundGradient].
@ProviderFor(backgroundGradient)
final backgroundGradientProvider = AutoDisposeProvider<LinearGradient>.internal(
  backgroundGradient,
  name: r'backgroundGradientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$backgroundGradientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BackgroundGradientRef = AutoDisposeProviderRef<LinearGradient>;
String _$dynamicThemeModeHash() => r'd86354b6f1bb1dfd40944130d0ffdc6407f2003e';

/// See also [dynamicThemeMode].
@ProviderFor(dynamicThemeMode)
final dynamicThemeModeProvider = AutoDisposeProvider<ThemeMode>.internal(
  dynamicThemeMode,
  name: r'dynamicThemeModeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dynamicThemeModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DynamicThemeModeRef = AutoDisposeProviderRef<ThemeMode>;
String _$dailyForecastHash() => r'a523cbd193e53c7778efbce90c4fbdcd7313d181';

/// See also [dailyForecast].
@ProviderFor(dailyForecast)
final dailyForecastProvider = AutoDisposeProvider<List<ForecastItem>>.internal(
  dailyForecast,
  name: r'dailyForecastProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dailyForecastHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DailyForecastRef = AutoDisposeProviderRef<List<ForecastItem>>;
String _$currentWeatherHash() => r'f0e324b658c6cc47b6a7853c504bbb77c36c7f3e';

/// See also [CurrentWeather].
@ProviderFor(CurrentWeather)
final currentWeatherProvider =
    AutoDisposeAsyncNotifierProvider<CurrentWeather, Weather>.internal(
      CurrentWeather.new,
      name: r'currentWeatherProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentWeatherHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CurrentWeather = AutoDisposeAsyncNotifier<Weather>;
String _$weatherForecastHash() => r'5264e4ce372589b19db69394a166a6da69e25b52';

/// See also [WeatherForecast].
@ProviderFor(WeatherForecast)
final weatherForecastProvider =
    AutoDisposeAsyncNotifierProvider<WeatherForecast, Forecast>.internal(
      WeatherForecast.new,
      name: r'weatherForecastProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$weatherForecastHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$WeatherForecast = AutoDisposeAsyncNotifier<Forecast>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
