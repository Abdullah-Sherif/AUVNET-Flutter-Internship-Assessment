part of 'signup_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String email) = SignupEmailChanged;
  const factory SignUpEvent.passwordChanged(String password) = SignupPasswordChanged;
  const factory SignUpEvent.confirmPasswordChanged(String confirmPassword) = SignupConfirmPasswordChanged;
  const factory SignUpEvent.signUpSubmitted() = SignupSubmitted;
  const factory SignUpEvent.reset() = SignupResetState;
}