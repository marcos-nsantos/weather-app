// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationDatasourceHash() =>
    r'd5956bd21011c32f8c6c6b7e0caa9efa5706fe9b';

/// See also [locationDatasource].
@ProviderFor(locationDatasource)
final locationDatasourceProvider = Provider<LocationDatasource>.internal(
  locationDatasource,
  name: r'locationDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$locationDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocationDatasourceRef = ProviderRef<LocationDatasource>;
String _$locationRepositoryHash() =>
    r'cdb6b4a1826515be270c3383bc335a6467d9a6be';

/// See also [locationRepository].
@ProviderFor(locationRepository)
final locationRepositoryProvider = Provider<LocationRepository>.internal(
  locationRepository,
  name: r'locationRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$locationRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocationRepositoryRef = ProviderRef<LocationRepository>;
String _$currentLocationHash() => r'3fc4e661e249abb3fd6204e31bbb30dd985e05a0';

/// See also [CurrentLocation].
@ProviderFor(CurrentLocation)
final currentLocationProvider =
    AutoDisposeAsyncNotifierProvider<CurrentLocation, UserLocation>.internal(
      CurrentLocation.new,
      name: r'currentLocationProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentLocationHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CurrentLocation = AutoDisposeAsyncNotifier<UserLocation>;
String _$locationPermissionStatusHash() =>
    r'b7744e6a0595b366aa4513c2d0cd84755f24f91d';

/// See also [LocationPermissionStatus].
@ProviderFor(LocationPermissionStatus)
final locationPermissionStatusProvider =
    AutoDisposeAsyncNotifierProvider<LocationPermissionStatus, bool>.internal(
      LocationPermissionStatus.new,
      name: r'locationPermissionStatusProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$locationPermissionStatusHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LocationPermissionStatus = AutoDisposeAsyncNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
