import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/providers/shared_providers.dart';
import '../../domain/entities/user_settings.dart';

part 'settings_providers.g.dart';

const _settingsKey = 'user_settings';

@Riverpod(keepAlive: true)
class UserSettingsNotifier extends _$UserSettingsNotifier {
  @override
  UserSettings build() {
    _loadSettings();
    return const UserSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    final jsonString = prefs.getString(_settingsKey);
    if (jsonString != null) {
      try {
        final json = jsonDecode(jsonString) as Map<String, dynamic>;
        state = UserSettings.fromJson(json);
      } catch (_) {
        // Use defaults if parsing fails
      }
    }
  }

  Future<void> _saveSettings() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setString(_settingsKey, jsonEncode(state.toJson()));
  }

  Future<void> setTemperatureUnit(TemperatureUnit unit) async {
    state = state.copyWith(temperatureUnit: unit);
    await _saveSettings();
  }

  Future<void> setWindSpeedUnit(WindSpeedUnit unit) async {
    state = state.copyWith(windSpeedUnit: unit);
    await _saveSettings();
  }
}
