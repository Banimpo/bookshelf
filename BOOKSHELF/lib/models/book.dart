class Book {
  final String id;
  final String title;
  final String author;
  final String coverUrl;
  final double rating;
  final int pageCount;
  final String genre;
  final String summary;

  const Book({
    required this.id,
    required this.title,
    required this.author,
    required this.coverUrl,
    required this.rating,
    required this.pageCount,
    required this.genre,
    required this.summary,
  });
}
