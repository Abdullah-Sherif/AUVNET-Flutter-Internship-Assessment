import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signup_event.dart';
part 'signup_bloc_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpBlocState> {
  SignUpBloc(this._authRepository) : super(SignUpBlocState()) {
    on<SignupEmailChanged>(_onEmailChanged);
    on<SignupPasswordChanged>(_onPasswordChanged);
    on<SignupConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<SignupSubmitted>(_onSignUpSubmitted);
    on<SignupResetState>(_onResetSignUpState);
  }

  final AuthRepository _authRepository;

  void _onEmailChanged(SignupEmailChanged event, Emitter<SignUpBlocState> emit) {
    final email = event.email;
    emit(state.copyWith(email: email));
  }

  void _onPasswordChanged(SignupPasswordChanged event, Emitter<SignUpBlocState> emit) {
    final password = event.password;
    emit(state.copyWith(password: password));
  }

  void _onConfirmPasswordChanged(SignupConfirmPasswordChanged event, Emitter<SignUpBlocState> emit) {
    final confirmPassword = event.confirmPassword;
    emit(state.copyWith(confirmPassword: confirmPassword));
  }

  Future<void> _onSignUpSubmitted(SignupSubmitted event, Emitter<SignUpBlocState> emit) async {
    if (state.status.isInProgressOrSuccess) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final result = await _authRepository.createUserWithEmailAndPassword(email: state.email, password: state.password);

    emit(switch (result) {
      Success() => state.copyWith(status: FormzSubmissionStatus.success),
      Failure() => state.copyWith(status: FormzSubmissionStatus.failure),
    });
  }

  void _onResetSignUpState(SignupResetState event, Emitter<SignUpBlocState> emit) {
    emit(SignUpBlocState());
  }
}
