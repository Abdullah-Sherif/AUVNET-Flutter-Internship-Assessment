import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24,
            height: 44,
            child: Align(alignment: Alignment.bottomCenter, child: Image.asset('assets/logo_small.png', fit: BoxFit.contain)),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/categories.svg', fit: BoxFit.contain)),
          label: 'categories',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/deliver.svg', fit: BoxFit.contain)),
          label: 'deliver',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/cart.svg', fit: BoxFit.contain)),
          label: 'cart',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/user.svg', fit: BoxFit.contain)),
          label: 'Profile',
        ),
      ],
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
    );
  }
}
