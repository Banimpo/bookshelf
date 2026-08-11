import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bookshelf/screen/home_screen.dart';
import 'package:bookshelf/data/mock_books.dart';

void main() {
  testWidgets('HomeScreen shows app bar and a book from mock data', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    // AppBar title
    expect(find.text('BookShelf'), findsOneWidget);

    // At least one book title from mock data is displayed
    expect(find.text(mockBooks.first.title), findsWidgets);
  });
}
