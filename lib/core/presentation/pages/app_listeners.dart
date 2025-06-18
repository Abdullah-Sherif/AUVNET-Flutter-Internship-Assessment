import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:flutter/material.dart';

class AppListeners extends StatelessWidget {
  const AppListeners({super.key, required this.child, required this.router});

  final Widget child;
  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
