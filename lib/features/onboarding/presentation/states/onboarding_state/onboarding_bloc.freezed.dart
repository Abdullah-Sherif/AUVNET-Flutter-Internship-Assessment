// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent()';
}


}

/// @nodoc
class $OnboardingEventCopyWith<$Res>  {
$OnboardingEventCopyWith(OnboardingEvent _, $Res Function(OnboardingEvent) __);
}


/// @nodoc


class NextPressed implements OnboardingEvent {
  const NextPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.nextPressed()';
}


}




/// @nodoc


class GetStartedPressed implements OnboardingEvent {
  const GetStartedPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStartedPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.getStartedPressed()';
}


}




/// @nodoc
mixin _$OnboardingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState()';
}


}

/// @nodoc
class $OnboardingStateCopyWith<$Res>  {
$OnboardingStateCopyWith(OnboardingState _, $Res Function(OnboardingState) __);
}


/// @nodoc


class OnboardingInitial implements OnboardingState {
  const OnboardingInitial({required this.pageIndex});
  

 final  int pageIndex;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingInitialCopyWith<OnboardingInitial> get copyWith => _$OnboardingInitialCopyWithImpl<OnboardingInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingInitial&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex);

@override
String toString() {
  return 'OnboardingState.onboarding(pageIndex: $pageIndex)';
}


}

/// @nodoc
abstract mixin class $OnboardingInitialCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
  factory $OnboardingInitialCopyWith(OnboardingInitial value, $Res Function(OnboardingInitial) _then) = _$OnboardingInitialCopyWithImpl;
@useResult
$Res call({
 int pageIndex
});




}
/// @nodoc
class _$OnboardingInitialCopyWithImpl<$Res>
    implements $OnboardingInitialCopyWith<$Res> {
  _$OnboardingInitialCopyWithImpl(this._self, this._then);

  final OnboardingInitial _self;
  final $Res Function(OnboardingInitial) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pageIndex = null,}) {
  return _then(OnboardingInitial(
pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OnboardingCompleted implements OnboardingState {
  const OnboardingCompleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingCompleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.onboardingCompleted()';
}


}




// dart format on
