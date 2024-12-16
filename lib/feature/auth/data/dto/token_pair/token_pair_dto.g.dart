// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_pair_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenPairDtoImpl _$$TokenPairDtoImplFromJson(Map<String, dynamic> json) =>
    _$TokenPairDtoImpl(
      accessToken: json['token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$TokenPairDtoImplToJson(_$TokenPairDtoImpl instance) =>
    <String, dynamic>{
      'token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
