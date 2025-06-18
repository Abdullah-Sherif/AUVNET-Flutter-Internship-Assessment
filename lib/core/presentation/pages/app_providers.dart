import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:auvnet_internship_assessment/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [BlocProvider(create: (context) => getIt<UserBloc>(), lazy: false)], child: child);
  }
}
