// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(locationDatasource)
const locationDatasourceProvider = LocationDatasourceProvider._();

final class LocationDatasourceProvider
    extends
        $FunctionalProvider<
          LocationDatasource,
          LocationDatasource,
          LocationDatasource
        >
    with $Provider<LocationDatasource> {
  const LocationDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationDatasourceHash();

  @$internal
  @override
  $ProviderElement<LocationDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationDatasource create(Ref ref) {
    return locationDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationDatasource>(value),
    );
  }
}

String _$locationDatasourceHash() =>
    r'd5956bd21011c32f8c6c6b7e0caa9efa5706fe9b';

@ProviderFor(locationRepository)
const locationRepositoryProvider = LocationRepositoryProvider._();

final class LocationRepositoryProvider
    extends
        $FunctionalProvider<
          LocationRepository,
          LocationRepository,
          LocationRepository
        >
    with $Provider<LocationRepository> {
  const LocationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationRepositoryHash();

  @$internal
  @override
  $ProviderElement<LocationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocationRepository create(Ref ref) {
    return locationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationRepository>(value),
    );
  }
}

String _$locationRepositoryHash() =>
    r'cdb6b4a1826515be270c3383bc335a6467d9a6be';

@ProviderFor(CurrentLocation)
const currentLocationProvider = CurrentLocationProvider._();

final class CurrentLocationProvider
    extends $AsyncNotifierProvider<CurrentLocation, UserLocation> {
  const CurrentLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLocationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLocationHash();

  @$internal
  @override
  CurrentLocation create() => CurrentLocation();
}

String _$currentLocationHash() => r'3fc4e661e249abb3fd6204e31bbb30dd985e05a0';

abstract class _$CurrentLocation extends $AsyncNotifier<UserLocation> {
  FutureOr<UserLocation> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<UserLocation>, UserLocation>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserLocation>, UserLocation>,
              AsyncValue<UserLocation>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(LocationPermissionStatus)
const locationPermissionStatusProvider = LocationPermissionStatusProvider._();

final class LocationPermissionStatusProvider
    extends $AsyncNotifierProvider<LocationPermissionStatus, bool> {
  const LocationPermissionStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationPermissionStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationPermissionStatusHash();

  @$internal
  @override
  LocationPermissionStatus create() => LocationPermissionStatus();
}

String _$locationPermissionStatusHash() =>
    r'b7744e6a0595b366aa4513c2d0cd84755f24f91d';

abstract class _$LocationPermissionStatus extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
