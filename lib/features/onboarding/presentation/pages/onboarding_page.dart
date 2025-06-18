import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          SizedBox(width: double.infinity, child: Image.asset('assets/logo_eclipse.png')),
          const Spacer(),
          SizedBox(height: context.percentOfHeight(0.13)),
        ],
      ),
    );
  }
}
