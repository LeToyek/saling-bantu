import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pages/home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final _appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: HomePage.path,
  routes: [
    GoRoute(
      name: HomePage.name,
      path: HomePage.path,
      builder: (context, state) => const HomePage(),
    ),
    // GoRoute(
    //   path: '/login',
    // ),
  ],
);

final appRouterProvider = Provider((ref) => _appRouter);
