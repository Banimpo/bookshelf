import '../models/book.dart';

final List<Book> mockBooks = [
  const Book(
    id: '1',
    title: 'L\'Étranger',
    author: 'Albert Camus',
    coverUrl: 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c',
    rating: 4.7,
    pageCount: 159,
    genre: 'Roman',
    summary:
        'À travers la figure de Meursault, Albert Camus offre une réflexion profonde sur l\'absurdité de la condition humaine et le sentiment d\'étrangeté face au monde.',
  ),
  const Book(
    id: '2',
    title: 'Dune',
    author: 'Frank Herbert',
    coverUrl: 'https://images.unsplash.com/photo-1532012197267-da84d127e765',
    rating: 4.9,
    pageCount: 688,
    genre: 'Scolaire & SF',
    summary:
        'Sur la planète désertique d\'Arrakis, le jeune Paul Atréides se retrouve au cœur de rivalités politiques pour le contrôle de l\'Épice, la substance la plus précieuse de l\'univers.',
  ),
  const Book(
    id: '3',
    title: 'Sapiens',
    author: 'Yuval Noah Harari',
    coverUrl: 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73',
    rating: 4.8,
    pageCount: 512,
    genre: 'Essai',
    summary:
        'Une brève histoire de l\'humanité qui retrace l\'évolution de l\'Homo Sapiens depuis l\'âge de la pierre jusqu\'aux révolutions scientifiques et technologiques.',
  ),
  const Book(
    id: '4',
    title: 'Le Petit Prince',
    author: 'Antoine de Saint-Exupéry',
    coverUrl: 'https://images.unsplash.com/photo-1512820790803-83ca734da794',
    rating: 4.9,
    pageCount: 96,
    genre: 'Conte',
    summary:
        'Un aviateur tombé dans le désert rencontre un petit prince venu d\'une autre planète, une poétique fable philosophique sur l\'amour et l\'amitié.',
  ),
];
