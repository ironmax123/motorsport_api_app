import 'package:example/ui/entry/screen.dart';
import 'package:example/ui/home/screen.dart';
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
          return Scaffold(
            body: navigationShell,
            bottomNavigationBar: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 8.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: NavigationBar(
                      height: 70,
                      backgroundColor: const Color(0xFFF7F2FA),
                      indicatorColor: const Color(0xFFE8DEF8),
                      selectedIndex: navigationShell.currentIndex,
                      destinations: const [
                        NavigationDestination(
                          icon: Icon(Icons.home_outlined),
                          selectedIcon: Icon(Icons.home),
                          label: 'Home',
                        ),
                        NavigationDestination(
                          icon: Icon(Icons.emoji_events_outlined),
                          selectedIcon: Icon(Icons.emoji_events),
                          label: 'rank',
                        ),
                      ],
                      onDestinationSelected: (index) {
                        navigationShell.goBranch(
                          index,
                          initialLocation:
                              index == navigationShell.currentIndex,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          );
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
