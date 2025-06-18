import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final emailError = useState<String?>(null);
    final passwordError = useState<String?>(null);

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: BlocListener<LoginBloc, LoginBlocState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == FormzSubmissionStatus.failure) {
            showSnackBar(message: 'Login failed. Please try again.', context: context);
          }
        },
        child: BlocBuilder<LoginBloc, LoginBlocState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(height: context.percentOfHeight(0.1)),
                Center(child: Image.asset('assets/logo_circle.png')),
                SizedBox(height: context.percentOfHeight(0.02)),
                CustomTextInput(
                  controller: emailController,
                  leadingIcon: Icon(Icons.email_outlined, color: CustomColors.gray, size: 30),
                  errorMessage: emailError.value,
                  hintText: 'mail',
                ),
                SizedBox(height: context.percentOfHeight(0.02)),
                CustomTextInput(
                  controller: passwordController,
                  leadingIcon: Icon(Icons.lock_outline, color: CustomColors.gray, size: 30),
                  isPassword: true,
                  errorMessage: passwordError.value,
                  hintText: 'password',
                ),
                SizedBox(height: context.percentOfHeight(0.02)),
                CustomTextButton(
                  text: 'Log in',
                  onPressed: () {
                    emailError.value = null;
                    passwordError.value = null;
                    if (emailController.text.isEmpty) {
                      emailError.value = 'Email is required';
                    }
                    if (passwordController.text.isEmpty) {
                      passwordError.value = 'Password is required';
                    }

                    if (emailError.value != null || passwordError.value != null) {
                      return;
                    }

                    context.read<LoginBloc>().add(LoginEvent.emailChanged(emailController.text));
                    context.read<LoginBloc>().add(LoginEvent.passwordChanged(passwordController.text));
                    context.read<LoginBloc>().add(LoginEvent.submitted());
                  },
                ),
                SizedBox(height: context.percentOfHeight(0.01)),
                TextButton(
                  onPressed: () {
                    context.router.replaceAll([const SignupRouteLoader()]);
                  },
                  child: const Text('Create an account', style: TextStyle(color: CustomColors.linkBlue, fontSize: 16)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
