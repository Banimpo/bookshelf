import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bookshelf/screen/setting_screen.dart';
import 'package:bookshelf/providers/theme_provider.dart';

void main() {
  testWidgets('SettingsScreen toggles theme via provider', (
    WidgetTester tester,
  ) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await tester.pumpWidget(
      ProviderScope(
        parent: container,
        child: const MaterialApp(home: SettingsScreen()),
      ),
    );

    // Initial value should be light
    expect(container.read(themeNotifierProvider), ThemeMode.light);

    // Toggle the switch
    final switchFinder = find.byType(SwitchListTile);
    expect(switchFinder, findsOneWidget);
    await tester.tap(switchFinder);
    await tester.pumpAndSettle();

    // Provider state should now be dark
    expect(container.read(themeNotifierProvider), ThemeMode.dark);
  });
}
