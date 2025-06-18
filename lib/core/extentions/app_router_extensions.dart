import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';

extension AppRouterX on AppRouter {
  Future<void> replaceAllWithOne(PageRouteInfo route) async {
    return replaceAll([route]);
  }
}
