import 'package:freezed_annotation/freezed_annotation.dart';

part 'auvnet_user_entity.freezed.dart';
part 'auvnet_user_entity.g.dart';

@freezed
abstract class AuvnetUserEntity with _$AuvnetUserEntity {
  factory AuvnetUserEntity({required String emial, required String uid}) = _AuvnetUserEntity;
  factory AuvnetUserEntity.fromJson(Map<String, dynamic> json) => _$AuvnetUserEntityFromJson(json);
}
