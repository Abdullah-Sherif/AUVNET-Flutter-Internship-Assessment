part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  factory UserState({@Default(null) AuvnetUserEntity? user}) = _UserState;
}
