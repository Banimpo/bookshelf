import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/book_repository.dart';

final bookRepositoryProvider = Provider<BookRepository>((ref) {
  return const MockBookRepository();
});
