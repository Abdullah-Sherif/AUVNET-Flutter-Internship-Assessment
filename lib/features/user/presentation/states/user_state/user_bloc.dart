import 'dart:async';

import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_bloc_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserBlocState> {
  UserBloc(this._userRepository) : super(UserBlocState()) {
    _userSubscription = _userRepository.onUserChanged.listen((user) {
      if (!isClosed && user != null) {
        add(UserEvent.userChanged(user: user));
      }
    });

    on<UserSet>(_onUserSet);
    on<UserUnauthenticated>(_onUserUnauthenticated);
    on<_UserChanged>(_onUserChanged);
  }

  final UserRepository _userRepository;
  late final StreamSubscription<AuvnetUserEntity?> _userSubscription;

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }

  void _onUserSet(UserSet event, Emitter<UserBlocState> emit) {
    emit(state.copyWith(user: event.user));
  }

  void _onUserUnauthenticated(UserUnauthenticated event, Emitter<UserBlocState> emit) {
    _userRepository.onUnauthenticated();
    emit(state.copyWith(user: null));
  }

  void _onUserChanged(_UserChanged event, Emitter<UserBlocState> emit) {
    emit(state.copyWith(user: event.user));
  }
}
