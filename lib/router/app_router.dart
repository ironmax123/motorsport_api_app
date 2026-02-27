import 'package:example/ui/entry/screen.dart';
import 'package:example/ui/home/screen.dart';
import 'package:example/ui/main/main_screen.dart';
import 'package:example/ui/rank/screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);
final GlobalKey<NavigatorState> _shellNavigatorHomeKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final GlobalKey<NavigatorState> _shellNavigatorRankKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellRank');

class AppRouter {
  static final AppRouter instance = AppRouter();

  final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const HomeScreen(),
                routes: [
                  GoRoute(
                    path: 'entry',
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final raceName = state.extra as String? ?? 'Super GT';
                      return EntryScreen(raceName: raceName);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorRankKey,
            routes: [
              GoRoute(
                path: '/rank',
                builder: (context, state) => const RankScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
