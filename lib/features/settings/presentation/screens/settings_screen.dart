import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/widgets/gradient_background.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    subtitle: 'Celsius (°C)',
                    onTap: () {
                      // TODO: Implement temperature unit toggle
                    },
                  ),
                  _SettingsTile(
                    icon: Icons.speed,
                    title: 'Wind Speed',
                    subtitle: 'Meters per second (m/s)',
                    onTap: () {
                      // TODO: Implement wind speed unit toggle
                    },
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
