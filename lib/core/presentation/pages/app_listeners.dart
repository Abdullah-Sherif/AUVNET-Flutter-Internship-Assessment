import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppListeners extends StatelessWidget {
  const AppListeners({super.key, required this.child, required this.router});

  final Widget child;
  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthBlocState>(
          listener: (context, state) async {
            final newRoute = switch (state) {
              AuthAuthenticated() => const SplashRoute(),
              AuthUnauthenticated() => const SplashRoute(),
              AuthInitial() => const SplashRoute(),
              AuthUnknown() => const SplashRoute(),
              _ => const SplashRoute(),
            };

            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.pushAndPopUntilFirst(newRoute);
            });
          },
        ),
      ],
      child: child,
    );
  }
}
