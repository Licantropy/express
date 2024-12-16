// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDtoImpl _$$LoginDtoImplFromJson(Map<String, dynamic> json) =>
    _$LoginDtoImpl(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      tokenPair:
          TokenPairDto.fromJson(json['tokenPair'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginDtoImplToJson(_$LoginDtoImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokenPair': instance.tokenPair,
    };
