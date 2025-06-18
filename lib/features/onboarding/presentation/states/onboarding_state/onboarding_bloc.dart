import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'onboarding_event.dart';
part 'onboarding_bloc_state.dart';
part 'onboarding_bloc.freezed.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState.onboarding(pageIndex: 0)) {
    on<NextPressed>(_nextPressed);
    on<GetStartedPressed>(_getStartedPressed);
  }

  void _nextPressed(NextPressed event, Emitter<OnboardingState> emit) {
    if (state is! OnboardingInitial) {
      return;
    }

    final newIndex = state.pageIndex + 1;
    emit(OnboardingState.onboarding(pageIndex: newIndex));
  }

  void _getStartedPressed(GetStartedPressed event, Emitter<OnboardingState> emit) {
    emit(const OnboardingState.onboardingCompleted());
  }
}
