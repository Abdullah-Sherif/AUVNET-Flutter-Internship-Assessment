part of 'user_bloc.dart';

@freezed
abstract class UserBlocState with _$UserBlocState {
  factory UserBlocState({@Default(null) AuvnetUserEntity? user}) = _UserBlocState;
}
