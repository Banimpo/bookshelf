import 'package:flutter_test/flutter_test.dart';
import 'package:bookshelf/models/book.dart';

void main() {
  test('Book constructor assigns fields correctly', () {
    const book = Book(
      id: '10',
      title: 'Test',
      author: 'Auteur',
      coverUrl: 'http://example.com',
      rating: 4.2,
      pageCount: 100,
      genre: 'Test',
      summary: 'Résumé',
    );

    expect(book.id, '10');
    expect(book.title, 'Test');
    expect(book.author, 'Auteur');
    expect(book.rating, 4.2);
    expect(book.pageCount, 100);
  });
}
