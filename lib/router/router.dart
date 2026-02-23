import 'package:example/ui/entry/screen.dart';
import 'package:example/ui/home/screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final AppRouter instance = AppRouter();

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/entry',
        builder: (context, state) {
          final raceName = state.extra as String;
          return EntryScreen(raceName: raceName);
        },
      ),
    ],
  );
}
