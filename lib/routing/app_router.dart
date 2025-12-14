import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/location/presentation/providers/location_providers.dart';
import '../features/location/presentation/screens/location_permission_screen.dart';
import '../features/settings/presentation/screens/settings_screen.dart';
import '../features/weather/presentation/screens/weather_screen.dart';
import 'routes.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: Routes.home,
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final hasPermission =
          await ref.read(locationPermissionStatusProvider.future);

      final isOnPermissionPage =
          state.matchedLocation == Routes.locationPermission;

      if (!hasPermission && !isOnPermissionPage) {
        return Routes.locationPermission;
      }

      if (hasPermission && isOnPermissionPage) {
        return Routes.home;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        name: 'home',
        builder: (context, state) => const WeatherScreen(),
      ),
      GoRoute(
        path: Routes.settings,
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: Routes.locationPermission,
        name: 'location-permission',
        builder: (context, state) => const LocationPermissionScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found: ${state.error}'),
      ),
    ),
  );
}
