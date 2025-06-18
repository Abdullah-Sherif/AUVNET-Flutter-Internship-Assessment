import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'HomeWrapperRoute')
class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  final List<PageRouteInfo<dynamic>> routes = const [MainRoute()];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: routes,
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(body: SafeArea(child: child), bottomNavigationBar: CustomBottomNavigationBar(tabsRouter: tabsRouter));
      },
    );
  }
}
