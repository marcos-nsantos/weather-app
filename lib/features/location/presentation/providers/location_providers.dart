import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/result.dart';
import '../../data/datasources/location_datasource.dart';
import '../../data/repositories/location_repository_impl.dart';
import '../../domain/entities/user_location.dart';
import '../../domain/repositories/location_repository.dart';

part 'location_providers.g.dart';

@Riverpod(keepAlive: true)
LocationDatasource locationDatasource(Ref ref) {
  return LocationDatasourceImpl();
}

@Riverpod(keepAlive: true)
LocationRepository locationRepository(Ref ref) {
  return LocationRepositoryImpl(
    datasource: ref.watch(locationDatasourceProvider),
  );
}

@riverpod
class CurrentLocation extends _$CurrentLocation {
  @override
  Future<UserLocation> build() async {
    final repository = ref.watch(locationRepositoryProvider);
    final result = await repository.getCurrentLocation();

    return result.when(
      success: (location) => location,
      failure: (failure) => throw Exception(failure.message),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    ref.invalidateSelf();
  }
}

@riverpod
class LocationPermissionStatus extends _$LocationPermissionStatus {
  @override
  Future<bool> build() async {
    final repository = ref.watch(locationRepositoryProvider);
    return repository.checkPermission();
  }

  Future<bool> requestPermission() async {
    final repository = ref.watch(locationRepositoryProvider);
    final granted = await repository.requestPermission();
    state = AsyncData(granted);
    return granted;
  }
}
