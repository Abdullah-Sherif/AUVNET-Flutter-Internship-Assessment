part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.nextPressed() = NextPressed;
  const factory OnboardingEvent.getStartedPressed() = GetStartedPressed;
}
