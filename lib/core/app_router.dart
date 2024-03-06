import 'package:booksy/chats.dart';
import 'package:booksy/features/home/presentation/views/book_view_details.dart';
import 'package:booksy/features/home/presentation/views/home.dart';
import 'package:booksy/features/search/search_view.dart';
import 'package:booksy/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/bookViewDetails',
        builder: (context, state) => const BookViewDetails(),
      ),
      GoRoute(
        path: '/chat',
        builder: (context, state) => const MyWidget(),
      ),
    ],
  );
}
