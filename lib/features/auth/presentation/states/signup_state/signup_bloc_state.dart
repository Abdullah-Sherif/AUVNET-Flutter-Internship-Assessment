part of 'signup_bloc.dart';

class SignUpBlocState {
  String email;
  String password;
  String confirmPassword;
  FormzSubmissionStatus status;

  SignUpBlocState({this.email = '', this.password = '', this.confirmPassword = '', this.status = FormzSubmissionStatus.initial});

  SignUpBlocState copyWith({String? email, String? password, String? confirmPassword, FormzSubmissionStatus? status}) {
    return SignUpBlocState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      status: status ?? this.status,
    );
  }
}
