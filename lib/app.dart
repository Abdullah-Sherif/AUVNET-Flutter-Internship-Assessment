import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/barrel.dart';

class App extends ConsumerWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppListeners(
      router: _appRouter,
      child: MaterialApp.router(
        routerDelegate: AutoRouterDelegate(_appRouter, navigatorObservers: () => [AppRouteObserver()]),
        routeInformationParser: _appRouter.defaultRouteParser(),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
