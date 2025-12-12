import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/widgets/gradient_background.dart';
import '../../domain/entities/user_settings.dart';
import '../providers/settings_providers.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(userSettingsNotifierProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Settings'),
      ),
      body: GradientBackground(
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _SettingsSection(
                title: 'Units',
                children: [
                  _SettingsTile(
                    icon: Icons.thermostat,
                    title: 'Temperature',
                    subtitle: _getTemperatureSubtitle(settings.temperatureUnit),
                    onTap: () => _showTemperatureDialog(context, ref, settings),
                  ),
                  _SettingsTile(
                    icon: Icons.speed,
                    title: 'Wind Speed',
                    subtitle: _getWindSpeedSubtitle(settings.windSpeedUnit),
                    onTap: () => _showWindSpeedDialog(context, ref, settings),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _SettingsSection(
                title: 'About',
                children: [
                  _SettingsTile(
                    icon: Icons.info_outline,
                    title: 'Version',
                    subtitle: '1.0.0',
                    onTap: null,
                  ),
                  _SettingsTile(
                    icon: Icons.code,
                    title: 'API',
                    subtitle: 'OpenWeatherMap',
                    onTap: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getTemperatureSubtitle(TemperatureUnit unit) {
    return switch (unit) {
      TemperatureUnit.celsius => 'Celsius (°C)',
      TemperatureUnit.fahrenheit => 'Fahrenheit (°F)',
    };
  }

  String _getWindSpeedSubtitle(WindSpeedUnit unit) {
    return switch (unit) {
      WindSpeedUnit.metersPerSecond => 'Meters per second (m/s)',
      WindSpeedUnit.kilometersPerHour => 'Kilometers per hour (km/h)',
      WindSpeedUnit.milesPerHour => 'Miles per hour (mph)',
    };
  }

  void _showTemperatureDialog(
    BuildContext context,
    WidgetRef ref,
    UserSettings settings,
  ) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        backgroundColor: const Color(0xFF1E1E2E),
        title: const Text(
          'Temperature Unit',
          style: TextStyle(color: Colors.white),
        ),
        children: TemperatureUnit.values.map((unit) {
          final isSelected = unit == settings.temperatureUnit;
          return SimpleDialogOption(
            onPressed: () {
              ref
                  .read(userSettingsNotifierProvider.notifier)
                  .setTemperatureUnit(unit);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  isSelected ? Icons.check_circle : Icons.circle_outlined,
                  color: isSelected ? Colors.blue : Colors.white54,
                ),
                const SizedBox(width: 12),
                Text(
                  _getTemperatureSubtitle(unit),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.white70,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  void _showWindSpeedDialog(
    BuildContext context,
    WidgetRef ref,
    UserSettings settings,
  ) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        backgroundColor: const Color(0xFF1E1E2E),
        title: const Text(
          'Wind Speed Unit',
          style: TextStyle(color: Colors.white),
        ),
        children: WindSpeedUnit.values.map((unit) {
          final isSelected = unit == settings.windSpeedUnit;
          return SimpleDialogOption(
            onPressed: () {
              ref
                  .read(userSettingsNotifierProvider.notifier)
                  .setWindSpeedUnit(unit);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  isSelected ? Icons.check_circle : Icons.circle_outlined,
                  color: isSelected ? Colors.blue : Colors.white54,
                ),
                const SizedBox(width: 12),
                Text(
                  _getWindSpeedSubtitle(unit),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.white70,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SettingsSection({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 8),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white.withValues(alpha: 0.6),
              letterSpacing: 1,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.6),
        ),
      ),
      trailing: onTap != null
          ? const Icon(Icons.chevron_right, color: Colors.white54)
          : null,
      onTap: onTap,
    );
  }
}
