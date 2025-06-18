part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.onboarding({required int pageIndex}) = OnboardingInitial;
  const factory OnboardingState.onboardingCompleted() = OnboardingCompleted;
}

extension OnboardingStateX on OnboardingState {
  bool get isOnboarding => this is OnboardingInitial;
  bool get isCompleted => this is OnboardingCompleted;

  int get pageIndex => this is OnboardingInitial ? (this as OnboardingInitial).pageIndex : 2;
}
