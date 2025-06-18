import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:auvnet_internship_assessment/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPageLoader extends StatelessWidget {
  const LoginPageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => getIt<LoginBloc>(), child: const LoginPage());
  }
}
