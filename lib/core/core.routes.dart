import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';

final coreRoutes = <AutoRoute>[
  AutoRoute(page: SplashRoute.page, initial: true),
  AutoRoute(
    page: HomeWrapperRoute.page,
    children: [
      AutoRoute(page: MainRoute.page, initial: true),
      AutoRoute(page: CategoriesRoute.page),
      AutoRoute(page: DeliverRoute.page),
      AutoRoute(page: CartRoute.page),
      AutoRoute(page: ProfileRoute.page),
    ],
  ),
];
