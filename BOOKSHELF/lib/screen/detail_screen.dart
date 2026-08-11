import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/mock_books.dart';
import '../widgets/rating_badge.dart';

class DetailScreen extends StatelessWidget {
  final String bookId;

  const DetailScreen({super.key, required this.bookId});

  @override
  Widget build(BuildContext context) {
    final book = mockBooks.firstWhere(
      (b) => b.id == bookId,
      orElse: () => mockBooks.first,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: 'book-cover-${book.id}',
                  child: Image.network(
                    book.coverUrl,
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black45,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => context.pop(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          book.title,
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      RatingBadge(rating: book.rating),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Par ${book.author}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Chip(
                    label: Text('${book.pageCount} pages'),
                    avatar: const Icon(Icons.menu_book, size: 16),
                  ),
                  const Divider(height: 32),
                  Text(
                    'Résumé',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    book.summary,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.bookmark_add),
                      label: const Text('Emprunter / Réserver ce livre'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Réservation confirmée pour "${book.title}" !',
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
