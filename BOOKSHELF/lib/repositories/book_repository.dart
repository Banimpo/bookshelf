import '../models/book.dart';
import '../data/mock_books.dart';

abstract class BookRepository {
  Future<List<Book>> fetchBooks();
  Future<Book?> getBookById(String id);
}

class MockBookRepository implements BookRepository {
  const MockBookRepository();

  @override
  Future<List<Book>> fetchBooks() async {
    return Future.value(mockBooks);
  }

  @override
  Future<Book?> getBookById(String id) async {
    try {
      final found = mockBooks.where((b) => b.id == id);
      return found.isEmpty ? null : found.first;
    } catch (_) {
      return null;
    }
  }
}
