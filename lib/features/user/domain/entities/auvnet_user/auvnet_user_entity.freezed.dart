// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auvnet_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuvnetUserEntity {

 String get emial; String get uid;
/// Create a copy of AuvnetUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuvnetUserEntityCopyWith<AuvnetUserEntity> get copyWith => _$AuvnetUserEntityCopyWithImpl<AuvnetUserEntity>(this as AuvnetUserEntity, _$identity);

  /// Serializes this AuvnetUserEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuvnetUserEntity&&(identical(other.emial, emial) || other.emial == emial)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emial,uid);

@override
String toString() {
  return 'AuvnetUserEntity(emial: $emial, uid: $uid)';
}


}

/// @nodoc
abstract mixin class $AuvnetUserEntityCopyWith<$Res>  {
  factory $AuvnetUserEntityCopyWith(AuvnetUserEntity value, $Res Function(AuvnetUserEntity) _then) = _$AuvnetUserEntityCopyWithImpl;
@useResult
$Res call({
 String emial, String uid
});




}
/// @nodoc
class _$AuvnetUserEntityCopyWithImpl<$Res>
    implements $AuvnetUserEntityCopyWith<$Res> {
  _$AuvnetUserEntityCopyWithImpl(this._self, this._then);

  final AuvnetUserEntity _self;
  final $Res Function(AuvnetUserEntity) _then;

/// Create a copy of AuvnetUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emial = null,Object? uid = null,}) {
  return _then(_self.copyWith(
emial: null == emial ? _self.emial : emial // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuvnetUserEntity implements AuvnetUserEntity {
   _AuvnetUserEntity({required this.emial, required this.uid});
  factory _AuvnetUserEntity.fromJson(Map<String, dynamic> json) => _$AuvnetUserEntityFromJson(json);

@override final  String emial;
@override final  String uid;

/// Create a copy of AuvnetUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuvnetUserEntityCopyWith<_AuvnetUserEntity> get copyWith => __$AuvnetUserEntityCopyWithImpl<_AuvnetUserEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuvnetUserEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuvnetUserEntity&&(identical(other.emial, emial) || other.emial == emial)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emial,uid);

@override
String toString() {
  return 'AuvnetUserEntity(emial: $emial, uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$AuvnetUserEntityCopyWith<$Res> implements $AuvnetUserEntityCopyWith<$Res> {
  factory _$AuvnetUserEntityCopyWith(_AuvnetUserEntity value, $Res Function(_AuvnetUserEntity) _then) = __$AuvnetUserEntityCopyWithImpl;
@override @useResult
$Res call({
 String emial, String uid
});




}
/// @nodoc
class __$AuvnetUserEntityCopyWithImpl<$Res>
    implements _$AuvnetUserEntityCopyWith<$Res> {
  __$AuvnetUserEntityCopyWithImpl(this._self, this._then);

  final _AuvnetUserEntity _self;
  final $Res Function(_AuvnetUserEntity) _then;

/// Create a copy of AuvnetUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emial = null,Object? uid = null,}) {
  return _then(_AuvnetUserEntity(
emial: null == emial ? _self.emial : emial // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
