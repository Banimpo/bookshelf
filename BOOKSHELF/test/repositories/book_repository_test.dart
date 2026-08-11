import 'package:flutter_test/flutter_test.dart';
import 'package:bookshelf/repositories/book_repository.dart';

void main() {
  final repo = const MockBookRepository();

  test('fetchBooks returns non-empty list', () async {
    final books = await repo.fetchBooks();
    expect(books, isNotEmpty);
  });

  test('getBookById returns correct book for existing id', () async {
    final book = await repo.getBookById('1');
    expect(book, isNotNull);
    expect(book!.id, '1');
  });

  test('getBookById returns null for unknown id', () async {
    final book = await repo.getBookById('unknown-id');
    expect(book, isNull);
  });
}
