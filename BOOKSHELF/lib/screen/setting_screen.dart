import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeNotifierProvider);
    final isDark = currentTheme == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(title: const Text('Paramètres')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Mode Sombre'),
            subtitle: const Text('Activer le thème sombre de l\'application'),
            secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            value: isDark,
            onChanged: (val) => ref.read(themeNotifierProvider.notifier).toggle(val),
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
