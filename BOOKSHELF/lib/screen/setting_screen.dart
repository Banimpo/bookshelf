import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const SettingsScreen({super.key, required this.themeNotifier});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paramètres')),
      body: ListView(
        children: [
          ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (context, currentTheme, _) {
              final isDark = currentTheme == ThemeMode.dark;
              return SwitchListTile(
                title: const Text('Mode Sombre'),
                subtitle: const Text(
                  'Activer le thème sombre de l\'application',
                ),
                secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
                value: isDark,
                onChanged: (val) {
                  themeNotifier.value = val ? ThemeMode.dark : ThemeMode.light;
                },
              );
            },
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Version de l\'application'),
            subtitle: Text('BookShelf v1.0.0'),
          ),
        ],
      ),
    );
  }
}
