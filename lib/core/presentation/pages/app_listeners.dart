import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppListeners extends HookConsumerWidget {
  const AppListeners({super.key, required this.child, required this.router});

  final Widget child;
  final AppRouter router;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return child;
  }
}
