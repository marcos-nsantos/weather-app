// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(weatherRemoteDatasource)
const weatherRemoteDatasourceProvider = WeatherRemoteDatasourceProvider._();

final class WeatherRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          WeatherRemoteDatasource,
          WeatherRemoteDatasource,
          WeatherRemoteDatasource
        >
    with $Provider<WeatherRemoteDatasource> {
  const WeatherRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherRemoteDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<WeatherRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WeatherRemoteDatasource create(Ref ref) {
    return weatherRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WeatherRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WeatherRemoteDatasource>(value),
    );
  }
}

String _$weatherRemoteDatasourceHash() =>
    r'c1460a76d785a7b49cba11f0a31ea0b60bcf5c7c';

@ProviderFor(weatherLocalDatasource)
const weatherLocalDatasourceProvider = WeatherLocalDatasourceProvider._();

final class WeatherLocalDatasourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<WeatherLocalDatasource>,
          WeatherLocalDatasource,
          FutureOr<WeatherLocalDatasource>
        >
    with
        $FutureModifier<WeatherLocalDatasource>,
        $FutureProvider<WeatherLocalDatasource> {
  const WeatherLocalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherLocalDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherLocalDatasourceHash();

  @$internal
  @override
  $FutureProviderElement<WeatherLocalDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<WeatherLocalDatasource> create(Ref ref) {
    return weatherLocalDatasource(ref);
  }
}

String _$weatherLocalDatasourceHash() =>
    r'9155dadb31fc1bf48052b2252c25b00065ee2e66';

@ProviderFor(weatherRepository)
const weatherRepositoryProvider = WeatherRepositoryProvider._();

final class WeatherRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<WeatherRepository>,
          WeatherRepository,
          FutureOr<WeatherRepository>
        >
    with
        $FutureModifier<WeatherRepository>,
        $FutureProvider<WeatherRepository> {
  const WeatherRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<WeatherRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<WeatherRepository> create(Ref ref) {
    return weatherRepository(ref);
  }
}

String _$weatherRepositoryHash() => r'a7289f1e2f65293efb45dda427216b049887279b';

@ProviderFor(CurrentWeather)
const currentWeatherProvider = CurrentWeatherProvider._();

final class CurrentWeatherProvider
    extends $AsyncNotifierProvider<CurrentWeather, Weather> {
  const CurrentWeatherProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentWeatherProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentWeatherHash();

  @$internal
  @override
  CurrentWeather create() => CurrentWeather();
}

String _$currentWeatherHash() => r'f0e324b658c6cc47b6a7853c504bbb77c36c7f3e';

abstract class _$CurrentWeather extends $AsyncNotifier<Weather> {
  FutureOr<Weather> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Weather>, Weather>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Weather>, Weather>,
              AsyncValue<Weather>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(WeatherForecast)
const weatherForecastProvider = WeatherForecastProvider._();

final class WeatherForecastProvider
    extends $AsyncNotifierProvider<WeatherForecast, Forecast> {
  const WeatherForecastProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherForecastProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherForecastHash();

  @$internal
  @override
  WeatherForecast create() => WeatherForecast();
}

String _$weatherForecastHash() => r'5264e4ce372589b19db69394a166a6da69e25b52';

abstract class _$WeatherForecast extends $AsyncNotifier<Forecast> {
  FutureOr<Forecast> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Forecast>, Forecast>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Forecast>, Forecast>,
              AsyncValue<Forecast>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(isDayTime)
const isDayTimeProvider = IsDayTimeProvider._();

final class IsDayTimeProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsDayTimeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isDayTimeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isDayTimeHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isDayTime(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isDayTimeHash() => r'93e1e89ab130df35a4eeb96d819487410d6a86a8';

@ProviderFor(weatherAnimationPath)
const weatherAnimationPathProvider = WeatherAnimationPathProvider._();

final class WeatherAnimationPathProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const WeatherAnimationPathProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherAnimationPathProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherAnimationPathHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return weatherAnimationPath(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$weatherAnimationPathHash() =>
    r'dd532909aa6d2d24b70b7df58a82f8153aba40c3';

@ProviderFor(backgroundGradient)
const backgroundGradientProvider = BackgroundGradientProvider._();

final class BackgroundGradientProvider
    extends $FunctionalProvider<LinearGradient, LinearGradient, LinearGradient>
    with $Provider<LinearGradient> {
  const BackgroundGradientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'backgroundGradientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$backgroundGradientHash();

  @$internal
  @override
  $ProviderElement<LinearGradient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LinearGradient create(Ref ref) {
    return backgroundGradient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LinearGradient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LinearGradient>(value),
    );
  }
}

String _$backgroundGradientHash() =>
    r'2308daaa12123e9f1921eb75f5ec90c6e9e733ad';

@ProviderFor(dynamicThemeMode)
const dynamicThemeModeProvider = DynamicThemeModeProvider._();

final class DynamicThemeModeProvider
    extends $FunctionalProvider<ThemeMode, ThemeMode, ThemeMode>
    with $Provider<ThemeMode> {
  const DynamicThemeModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dynamicThemeModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dynamicThemeModeHash();

  @$internal
  @override
  $ProviderElement<ThemeMode> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeMode create(Ref ref) {
    return dynamicThemeMode(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$dynamicThemeModeHash() => r'd86354b6f1bb1dfd40944130d0ffdc6407f2003e';

@ProviderFor(dailyForecast)
const dailyForecastProvider = DailyForecastProvider._();

final class DailyForecastProvider
    extends
        $FunctionalProvider<
          List<ForecastItem>,
          List<ForecastItem>,
          List<ForecastItem>
        >
    with $Provider<List<ForecastItem>> {
  const DailyForecastProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyForecastProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyForecastHash();

  @$internal
  @override
  $ProviderElement<List<ForecastItem>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<ForecastItem> create(Ref ref) {
    return dailyForecast(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<ForecastItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<ForecastItem>>(value),
    );
  }
}

String _$dailyForecastHash() => r'a523cbd193e53c7778efbce90c4fbdcd7313d181';
