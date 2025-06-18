import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController _pageController;

  final List<String> headlines = ["all-in-one delivery", "User-to-User Delivery", "Sales & Discounts"];

  final List<String> descriptions = [
    "Order Groceries, medicines, and meals delivered straight to your door",
    "Send or receive items from other users quickly and easily",
    "Discover exclusive sales and deals every day",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: IgnorePointer(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.green.withOpacity(0.3), Colors.transparent],
                    radius: 0.85,
                    center: Alignment.bottomRight,
                    stops: [0.8, 1.0],
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: Container(color: Colors.transparent),
                ),
              ),
            ),
          ),
          // Main onboarding content
          BlocListener<OnboardingBloc, OnboardingState>(
            listenWhen: (previous, current) => previous.pageIndex != current.pageIndex,
            listener: (context, state) {
              _pageController.animateToPage(state.pageIndex, duration: const Duration(milliseconds: 400), curve: Curves.ease);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: double.infinity, child: Image.asset('assets/logo_eclipse.png')),
                SizedBox(height: context.percentOfHeight(0.05)),
                Flexible(
                  fit: FlexFit.loose,
                  child: SizedBox(
                    width: context.percentOfWidth(0.75),
                    child: PageView.builder(
                      controller: _pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: headlines.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  headlines[index],
                                  style: context.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(height: context.percentOfHeight(0.02)),
                            Text(
                              descriptions[index],
                              style: context.textTheme.bodyLarge?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                BlocBuilder<OnboardingBloc, OnboardingState>(
                  builder: (context, state) {
                    final isLastPage = state.pageIndex == 2;
                    return CustomTextButton(
                      text: isLastPage ? "Get Started" : "Next",
                      onPressed: () {
                        if (isLastPage) {
                          context.read<OnboardingBloc>().add(const OnboardingEvent.getStartedPressed());
                        } else {
                          context.read<OnboardingBloc>().add(const OnboardingEvent.nextPressed());
                        }
                      },
                      width: context.percentOfWidth(0.78),
                    );
                  },
                ),
                SizedBox(height: context.percentOfHeight(0.11)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
