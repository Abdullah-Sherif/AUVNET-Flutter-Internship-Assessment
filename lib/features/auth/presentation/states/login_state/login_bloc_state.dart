part of 'login_bloc.dart';

class LoginBlocState {
  String email;
  String password;
  FormzSubmissionStatus status;

  LoginBlocState({this.email = '', this.password = '', this.status = FormzSubmissionStatus.initial});

  LoginBlocState copyWith({String? email, String? password, FormzSubmissionStatus? status}) {
    return LoginBlocState(email: email ?? this.email, password: password ?? this.password, status: status ?? this.status);
  }
}
