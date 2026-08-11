import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/mock_books.dart';
import '../models/book.dart';
import '../widgets/genre_chip.dart';
import '../widgets/book_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';
  String _selectedGenre = 'Tous';

  final List<String> _genres = [
    'Tous',
    'Roman',
    'Scolaire & SF',
    'Essai',
    'Conte',
  ];

  List<Book> get _filteredBooks {
    return mockBooks.where((book) {
      final matchesSearch =
          book.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          book.author.toLowerCase().contains(_searchQuery.toLowerCase());
      final matchesGenre =
          _selectedGenre == 'Tous' || book.genre == _selectedGenre;
      return matchesSearch && matchesGenre;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookShelf'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_location_alt_outlined),
            onPressed: () => context.pushNamed('add'),
            tooltip: 'Ajouter un livre',
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.pushNamed('settings'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher par titre ou auteur...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
              ),
              onChanged: (val) => setState(() => _searchQuery = val),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _genres.length,
                itemBuilder: (context, index) {
                  final genre = _genres[index];
                  return GenreChip(
                    label: genre,
                    isSelected: _selectedGenre == genre,
                    onTap: () => setState(() => _selectedGenre = genre),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _filteredBooks.isEmpty
                  ? const Center(child: Text('Aucun livre trouvé.'))
                  : LayoutBuilder(
                      builder: (context, constraints) {
                        final crossAxisCount = constraints.maxWidth > 600
                            ? 3
                            : 2;
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                              ),
                          itemCount: _filteredBooks.length,
                          itemBuilder: (context, index) {
                            final book = _filteredBooks[index];
                            return BookCard(
                              book: book,
                              onTap: () => context.pushNamed(
                                'detail',
                                pathParameters: {'id': book.id},
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
