import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/style/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedItemColor: CustomColors.mainPurple,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _NavBarIcon(
            isSelected: tabsRouter.activeIndex == 0,
            child: SizedBox(width: 24, height: 44, child: Image.asset('assets/logo_small.png', fit: BoxFit.contain)),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _NavBarIcon(
            isSelected: tabsRouter.activeIndex == 1,
            child: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/categories.svg', fit: BoxFit.contain)),
          ),
          label: 'categories',
        ),
        BottomNavigationBarItem(
          icon: _NavBarIcon(
            isSelected: tabsRouter.activeIndex == 2,
            child: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/deliver.svg', fit: BoxFit.contain)),
          ),
          label: 'deliver',
        ),
        BottomNavigationBarItem(
          icon: _NavBarIcon(
            isSelected: tabsRouter.activeIndex == 3,
            child: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/cart.svg', fit: BoxFit.contain)),
          ),
          label: 'cart',
        ),
        BottomNavigationBarItem(
          icon: _NavBarIcon(
            isSelected: tabsRouter.activeIndex == 4,
            child: SizedBox(width: 24, height: 44, child: SvgPicture.asset('assets/user.svg', fit: BoxFit.contain)),
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final bool isSelected;
  final Widget child;

  const _NavBarIcon({required this.isSelected, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 5,
          width: 30,
          decoration: BoxDecoration(
            color: isSelected ? CustomColors.mainPurple : Colors.transparent,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(height: 2),
        child,
      ],
    );
  }
}
