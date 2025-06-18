part of 'auth_bloc.dart';

@freezed
class AuthBlocState with _$AuthBlocState{
  const factory AuthBlocState.initial() = AuthInitial;
  const factory AuthBlocState.authenticated() = AuthAuthenticated;
  const factory AuthBlocState.unauthenticated() = AuthUnauthenticated;
  const factory AuthBlocState.unknown() = AuthUnknown;
}

extension AuthBlocStateX on AuthBlocState {
  bool get isAuthenticated => this is AuthAuthenticated;
  bool get isUnauthenticated => this is AuthUnauthenticated;
  bool get isUnknown => this is AuthUnknown;
  bool get isInitial => this is AuthInitial;
}