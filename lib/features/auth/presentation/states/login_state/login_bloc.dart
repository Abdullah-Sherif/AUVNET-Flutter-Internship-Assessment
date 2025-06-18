import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_bloc_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginBlocState> {
  LoginBloc(this._authRepository) : super(LoginBlocState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<_Submitted>(_onSubmitted);
  }

  final AuthRepository _authRepository;

  void _onEmailChanged(EmailChanged event, Emitter<LoginBlocState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginBlocState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSubmitted(_Submitted event, Emitter<LoginBlocState> emit) async {
    if (state.status.isInProgressOrSuccess) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final result = await _authRepository.signInWithEmailAndPassword(email: state.email, password: state.password);

    emit(switch (result) {
      Success() => state.copyWith(status: FormzSubmissionStatus.success),
      Failure() => state.copyWith(status: FormzSubmissionStatus.failure),
    });
  }
}
