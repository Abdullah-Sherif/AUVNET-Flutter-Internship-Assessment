import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [...coreRoutes, ...onboardingRoutes, ...authRoutes, ...homeRoutes];
}
