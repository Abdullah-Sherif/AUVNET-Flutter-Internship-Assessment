// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent()';
}


}

/// @nodoc
class $SignUpEventCopyWith<$Res>  {
$SignUpEventCopyWith(SignUpEvent _, $Res Function(SignUpEvent) __);
}


/// @nodoc


class SignupEmailChanged implements SignUpEvent {
  const SignupEmailChanged(this.email);
  

 final  String email;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupEmailChangedCopyWith<SignupEmailChanged> get copyWith => _$SignupEmailChangedCopyWithImpl<SignupEmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'SignUpEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $SignupEmailChangedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignupEmailChangedCopyWith(SignupEmailChanged value, $Res Function(SignupEmailChanged) _then) = _$SignupEmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$SignupEmailChangedCopyWithImpl<$Res>
    implements $SignupEmailChangedCopyWith<$Res> {
  _$SignupEmailChangedCopyWithImpl(this._self, this._then);

  final SignupEmailChanged _self;
  final $Res Function(SignupEmailChanged) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(SignupEmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignupPasswordChanged implements SignUpEvent {
  const SignupPasswordChanged(this.password);
  

 final  String password;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupPasswordChangedCopyWith<SignupPasswordChanged> get copyWith => _$SignupPasswordChangedCopyWithImpl<SignupPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'SignUpEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $SignupPasswordChangedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignupPasswordChangedCopyWith(SignupPasswordChanged value, $Res Function(SignupPasswordChanged) _then) = _$SignupPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$SignupPasswordChangedCopyWithImpl<$Res>
    implements $SignupPasswordChangedCopyWith<$Res> {
  _$SignupPasswordChangedCopyWithImpl(this._self, this._then);

  final SignupPasswordChanged _self;
  final $Res Function(SignupPasswordChanged) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(SignupPasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignupConfirmPasswordChanged implements SignUpEvent {
  const SignupConfirmPasswordChanged(this.confirmPassword);
  

 final  String confirmPassword;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupConfirmPasswordChangedCopyWith<SignupConfirmPasswordChanged> get copyWith => _$SignupConfirmPasswordChangedCopyWithImpl<SignupConfirmPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupConfirmPasswordChanged&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,confirmPassword);

@override
String toString() {
  return 'SignUpEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $SignupConfirmPasswordChangedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignupConfirmPasswordChangedCopyWith(SignupConfirmPasswordChanged value, $Res Function(SignupConfirmPasswordChanged) _then) = _$SignupConfirmPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String confirmPassword
});




}
/// @nodoc
class _$SignupConfirmPasswordChangedCopyWithImpl<$Res>
    implements $SignupConfirmPasswordChangedCopyWith<$Res> {
  _$SignupConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final SignupConfirmPasswordChanged _self;
  final $Res Function(SignupConfirmPasswordChanged) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmPassword = null,}) {
  return _then(SignupConfirmPasswordChanged(
null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignupSubmitted implements SignUpEvent {
  const SignupSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.signUpSubmitted()';
}


}




/// @nodoc


class SignupResetState implements SignUpEvent {
  const SignupResetState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupResetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.reset()';
}


}




// dart format on
