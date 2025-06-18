import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<String> bannerImages = ['assets/mac.png', 'assets/bg.png', 'assets/krispy.png'];

  late final PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % bannerImages.length;
        _pageController.animateToPage(nextPage, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        // --- Header with Gradient and Profile ---
        _HeaderSection(),

        const SizedBox(height: 15),

        // --- Services Section ---
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SectionTitle("Services:"),
              const SizedBox(height: 10),
              _ServicesRow(),
              SizedBox(height: context.percentOfHeight(0.05)),

              // --- Promo Card ---
              _PromoCard(),

              SizedBox(height: context.percentOfHeight(0.022)),

              // --- Shortcuts Section ---
              _SectionTitle("Shortcuts:"),
              _ShortcutsRow(),

              SizedBox(height: context.percentOfHeight(0.05)),

              // --- Banner Carousel ---
              _BannerCarousel(
                bannerImages: bannerImages,
                pageController: _pageController,
                currentPage: _currentPage,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),

              SizedBox(height: context.percentOfHeight(0.04)),

              // --- Popular Restaurants ---
              _SectionTitle("Popular restaurants nearby", fontSize: 20),
              const SizedBox(height: 10),
              _PopularRestaurantsRow(),

              SizedBox(height: context.percentOfHeight(0.07)),
            ],
          ),
        ),
      ],
    );
  }
}

// ----------------- Widget Components -----------------

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF8900FE), Color(0xFFFFDE59)],
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Delivering to', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600)),
                Text('Your Location', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
                const SizedBox(height: 5),
                Text("Hi hepa!", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w800)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12, 14),
            child: Image.asset('assets/mock_profile.png', width: context.percentOfWidth(0.17)),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  const _SectionTitle(this.title, {this.fontSize = 30, super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w700, color: Colors.black),
      textAlign: TextAlign.left,
    );
  }
}

class _ServicesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ServiceCard(title: 'Food', iconPath: 'assets/burger.png', sale: 'Up to 50%'),
        ServiceCard(title: 'Health & Wellness', iconPath: 'assets/medicine.png', sale: '20mins'),
        ServiceCard(title: 'Grocery', iconPath: 'assets/groceries.png', sale: '15mins'),
      ],
    );
  }
}

class _PromoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.percentOfHeight(0.15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), spreadRadius: 1, blurRadius: 5, offset: Offset(0, 3))],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Center(child: SvgPicture.asset('assets/vault.svg', width: context.percentOfWidth(0.28))),
            SizedBox(
              width: context.percentOfWidth(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Got a code!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 5),
                  Text('Add your code and save on your order ', style: TextStyle(fontSize: 16), softWrap: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShortcutsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ShortcutButton(title: 'Past Orders', iconPath: 'assets/orders.svg'),
          ShortcutButton(title: 'Super Saver', iconPath: 'assets/vault.svg'),
          ShortcutButton(title: 'Must-tries', iconPath: 'assets/must_tries.svg'),
          ShortcutButton(title: 'Give Back', iconPath: 'assets/give.svg'),
          ShortcutButton(title: 'Best Sellers', iconPath: 'assets/start.svg'),
        ],
      ),
    );
  }
}

class _BannerCarousel extends StatelessWidget {
  final List<String> bannerImages;
  final PageController pageController;
  final int currentPage;
  final ValueChanged<int> onPageChanged;

  const _BannerCarousel({
    required this.bannerImages,
    required this.pageController,
    required this.currentPage,
    required this.onPageChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: context.percentOfHeight(0.20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), spreadRadius: 1, blurRadius: 5, offset: Offset(0, 3))],
          ),
          clipBehavior: Clip.antiAlias,
          child: PageView.builder(
            controller: pageController,
            itemCount: bannerImages.length,
            onPageChanged: onPageChanged,
            itemBuilder: (context, index) {
              return Image.asset(bannerImages[index], fit: BoxFit.fill, width: double.infinity, height: double.infinity);
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            bannerImages.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == index ? 16 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentPage == index ? CustomColors.mainPurple : Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PopularRestaurantsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          RestaurantCard(imagePath: 'assets/beirut.png', name: 'Allo Beirut', deliveryTime: '32 mins'),
          RestaurantCard(imagePath: 'assets/laffah.png', name: 'Laffah', deliveryTime: '38 mins'),
          RestaurantCard(imagePath: 'assets/fal.png', name: 'Falafil Al Rabiah Al Khal', deliveryTime: '44 mins'),
          RestaurantCard(imagePath: 'assets/barbar.png', name: 'Barbar', deliveryTime: '34 mins'),
        ],
      ),
    );
  }
}

// ----------------- Existing Card Widgets -----------------

class RestaurantCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String deliveryTime;

  const RestaurantCard({super.key, required this.imagePath, required this.name, required this.deliveryTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          width: context.percentOfWidth(0.3),
          height: context.percentOfHeight(0.1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity, height: 100),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Icon(Icons.access_time, size: 16, color: Colors.grey),
            const SizedBox(width: 4),
            Text(deliveryTime, style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}

class ShortcutButton extends StatelessWidget {
  final String title;
  final String iconPath;

  const ShortcutButton({super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.percentOfWidth(0.18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: context.percentOfHeight(0.07),
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFFFEEE6), borderRadius: BorderRadius.circular(15)),
            child: Padding(padding: const EdgeInsets.all(10.0), child: SvgPicture.asset(iconPath)),
          ),
          Text(title, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String sale;
  final String iconPath;

  const ServiceCard({super.key, required this.title, required this.iconPath, this.sale = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.percentOfWidth(0.25),
          height: context.percentOfHeight(0.1),
          decoration: BoxDecoration(
            color: CustomColors.lightGray,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 5, offset: Offset(0, 3))],
          ),
          child: Padding(padding: const EdgeInsets.all(15.0), child: Image.asset(iconPath)),
        ),
        const SizedBox(height: 5),
        Container(
          width: context.percentOfWidth(0.17),
          height: context.percentOfHeight(0.02),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: CustomColors.mainPurple),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(sale, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700), textAlign: TextAlign.center),
          ),
        ),
        Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ],
    );
  }
}
