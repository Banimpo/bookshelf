import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screen/home_screen.dart';
import '../screen/detail_screen.dart';
import '../screen/add_book_screen.dart';
import '../screen/setting_screen.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/book/:id',
        name: 'detail',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return DetailScreen(bookId: id);
        },
      ),
      GoRoute(
        path: '/add',
        name: 'add',
        builder: (context, state) => const AddBookScreen(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) =>
            const SettingsScreen(),
      ),
    ],
  );
}
