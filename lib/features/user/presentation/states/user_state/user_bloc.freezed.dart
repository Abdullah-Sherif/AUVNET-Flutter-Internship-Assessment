// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// @nodoc


class UserSet implements UserEvent {
  const UserSet({required this.user});
  

 final  AuvnetUserEntity user;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSetCopyWith<UserSet> get copyWith => _$UserSetCopyWithImpl<UserSet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSet&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserEvent.set(user: $user)';
}


}

/// @nodoc
abstract mixin class $UserSetCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $UserSetCopyWith(UserSet value, $Res Function(UserSet) _then) = _$UserSetCopyWithImpl;
@useResult
$Res call({
 AuvnetUserEntity user
});


$AuvnetUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$UserSetCopyWithImpl<$Res>
    implements $UserSetCopyWith<$Res> {
  _$UserSetCopyWithImpl(this._self, this._then);

  final UserSet _self;
  final $Res Function(UserSet) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(UserSet(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuvnetUserEntity,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuvnetUserEntityCopyWith<$Res> get user {
  
  return $AuvnetUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class UserUnauthenticated implements UserEvent {
  const UserUnauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUnauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.unauthenticated()';
}


}




/// @nodoc


class _UserChanged implements UserEvent {
  const _UserChanged({required this.user});
  

 final  AuvnetUserEntity user;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserChangedCopyWith<_UserChanged> get copyWith => __$UserChangedCopyWithImpl<_UserChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserChanged&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserEvent.userChanged(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserChangedCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UserChangedCopyWith(_UserChanged value, $Res Function(_UserChanged) _then) = __$UserChangedCopyWithImpl;
@useResult
$Res call({
 AuvnetUserEntity user
});


$AuvnetUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$UserChangedCopyWithImpl<$Res>
    implements _$UserChangedCopyWith<$Res> {
  __$UserChangedCopyWithImpl(this._self, this._then);

  final _UserChanged _self;
  final $Res Function(_UserChanged) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_UserChanged(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuvnetUserEntity,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuvnetUserEntityCopyWith<$Res> get user {
  
  return $AuvnetUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$UserBlocState {

 AuvnetUserEntity? get user;
/// Create a copy of UserBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBlocStateCopyWith<UserBlocState> get copyWith => _$UserBlocStateCopyWithImpl<UserBlocState>(this as UserBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBlocState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserBlocState(user: $user)';
}


}

/// @nodoc
abstract mixin class $UserBlocStateCopyWith<$Res>  {
  factory $UserBlocStateCopyWith(UserBlocState value, $Res Function(UserBlocState) _then) = _$UserBlocStateCopyWithImpl;
@useResult
$Res call({
 AuvnetUserEntity? user
});


$AuvnetUserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$UserBlocStateCopyWithImpl<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  _$UserBlocStateCopyWithImpl(this._self, this._then);

  final UserBlocState _self;
  final $Res Function(UserBlocState) _then;

/// Create a copy of UserBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuvnetUserEntity?,
  ));
}
/// Create a copy of UserBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuvnetUserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $AuvnetUserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc


class _UserBlocState implements UserBlocState {
   _UserBlocState({this.user = null});
  

@override@JsonKey() final  AuvnetUserEntity? user;

/// Create a copy of UserBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserBlocStateCopyWith<_UserBlocState> get copyWith => __$UserBlocStateCopyWithImpl<_UserBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBlocState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserBlocState(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserBlocStateCopyWith<$Res> implements $UserBlocStateCopyWith<$Res> {
  factory _$UserBlocStateCopyWith(_UserBlocState value, $Res Function(_UserBlocState) _then) = __$UserBlocStateCopyWithImpl;
@override @useResult
$Res call({
 AuvnetUserEntity? user
});


@override $AuvnetUserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$UserBlocStateCopyWithImpl<$Res>
    implements _$UserBlocStateCopyWith<$Res> {
  __$UserBlocStateCopyWithImpl(this._self, this._then);

  final _UserBlocState _self;
  final $Res Function(_UserBlocState) _then;

/// Create a copy of UserBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_UserBlocState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuvnetUserEntity?,
  ));
}

/// Create a copy of UserBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuvnetUserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $AuvnetUserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
