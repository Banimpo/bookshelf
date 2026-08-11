import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bookshelf/screen/detail_screen.dart';

void main() {
  testWidgets('DetailScreen shows error when bookId is invalid', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: DetailScreen(bookId: 'invalid')),
    );

    expect(find.text('Livre introuvable'), findsOneWidget);
    expect(find.text('Livre non trouvé'), findsOneWidget);
    expect(find.text('Retour à l\'accueil'), findsOneWidget);
  });
}
