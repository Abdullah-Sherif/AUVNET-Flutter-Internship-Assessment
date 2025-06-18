import 'package:auto_route/auto_route.dart';
import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final firstPasswordController = useTextEditingController();
    final secondPasswordController = useTextEditingController();

    final emailError = useState<String?>(null);
    final firstPasswordError = useState<String?>(null);
    final secondPasswordError = useState<String?>(null);

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: BlocListener<SignUpBloc, SignUpBlocState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == FormzSubmissionStatus.failure) {
            showSnackBar(message: 'Sign up failed. Please try again.', context: context);
          }
        },
        child: BlocBuilder<SignUpBloc, SignUpBlocState>(
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
                  controller: firstPasswordController,
                  leadingIcon: Icon(Icons.lock_outline, color: CustomColors.gray, size: 30),
                  isPassword: true,
                  errorMessage: firstPasswordError.value,
                  hintText: 'password',
                ),
                SizedBox(height: context.percentOfHeight(0.02)),
                CustomTextInput(
                  controller: secondPasswordController,
                  leadingIcon: Icon(Icons.lock_outline, color: CustomColors.gray, size: 30),
                  isPassword: true,
                  errorMessage: secondPasswordError.value,
                  hintText: 'confirm password',
                ),
                SizedBox(height: context.percentOfHeight(0.02)),
                CustomTextButton(
                  text: 'Sign up',
                  onPressed: () {
                    emailError.value = null;
                    firstPasswordError.value = null;
                    secondPasswordError.value = null;
                    if (emailController.text.isEmpty) {
                      emailError.value = 'Email is required';
                    }
                    if (firstPasswordController.text.isEmpty) {
                      firstPasswordError.value = 'Password is required';
                    }
                    if (secondPasswordController.text.isEmpty) {
                      secondPasswordError.value = 'Confirm Password is required';
                    }

                    if (firstPasswordController.text != secondPasswordController.text) {
                      secondPasswordError.value = 'Passwords do not match';
                    }

                    if (emailError.value != null ||
                        firstPasswordError.value != null ||
                        secondPasswordError.value != null ||
                        firstPasswordController.text != secondPasswordController.text) {
                      return;
                    }

                    context.read<SignUpBloc>().add(SignUpEvent.emailChanged(emailController.text));
                    context.read<SignUpBloc>().add(SignUpEvent.passwordChanged(firstPasswordController.text));
                    context.read<SignUpBloc>().add(SignUpEvent.confirmPasswordChanged(secondPasswordController.text));
                    context.read<SignUpBloc>().add(const SignUpEvent.signUpSubmitted());
                  },
                ),
                SizedBox(height: context.percentOfHeight(0.01)),
                TextButton(
                  onPressed: () {
                    context.router.replaceAll([const LoginRouteLoader()]);
                  },
                  child: const Text('Already have an account?', style: TextStyle(color: CustomColors.linkBlue, fontSize: 16)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
