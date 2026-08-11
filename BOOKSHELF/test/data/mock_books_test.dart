import 'package:flutter_test/flutter_test.dart';
import 'package:bookshelf/data/mock_books.dart';

void main() {
  test('mockBooks is not empty and contains Book objects', () {
    expect(mockBooks, isNotEmpty);
    expect(mockBooks.first.id, isNotEmpty);
    expect(mockBooks.first.title, isNotEmpty);
  });
}
