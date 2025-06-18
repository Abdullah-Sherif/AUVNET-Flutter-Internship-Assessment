part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.set({required AuvnetUserEntity user}) = UserSet;
  const factory UserEvent.unauthenticated() = UserUnauthenticated;
  const factory UserEvent.userChanged({required AuvnetUserEntity user}) = _UserChanged;
}
