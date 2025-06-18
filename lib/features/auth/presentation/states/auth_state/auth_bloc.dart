import 'dart:async';

import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthBlocState> {
  AuthBloc(this._authRepository, this._userRepository) : super(AuthBlocState.initial()) {
    on<_UserChanged>(_onUserChanged);
    on<SignOutRequested>(_onSignOutRequested);

    _userSubscription = _authRepository.onUserChanged.listen((user) {
      add(_UserChanged(user));
    });
  }

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  late final StreamSubscription<User?> _userSubscription;

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }

  Future<void> _onUserChanged(_UserChanged event, Emitter<AuthBlocState> emit) async {
    final user = event.user;
    if (user != null) {
      final userEntity = await _userRepository.getUser(user.uid).first;
      if (userEntity != null) {
        emit(AuthBlocState.authenticated());
      } else {
        emit(const AuthBlocState.unknown());
      }
    } else {
      emit(const AuthBlocState.unauthenticated());
    }
  }

  Future<void> _onSignOutRequested(SignOutRequested event, Emitter<AuthBlocState> emit) async {
    final result = await _authRepository.signOut();
    if (result is Success) {
      emit(const AuthBlocState.unauthenticated());
    }
  }
}
